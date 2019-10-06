/* pa3gyf gpsdocxo 2016 Arduino firmware.
 *  
 * Jan de Jongh, 2016, 2017.
 * 
 * 
 */

#include "Arduino.h"
#include <AltSoftSerial.h>
#include <TinyGPS.h>

const unsigned short majorVersion = 2;
const unsigned short minorVersion = 0;

#define BOARD_UNO   0
#define BOARD_MICRO 1

#if BOARD_UNO==1

const int gpsEnabledPort =  2;
const int tuneSelectPort = 13;

const int fixRedLed      =  6;
const int fixGrnLed      =  7;

const int heaterRedLed  = 12;
const int heaterGrnLed  = 11;
const int lockedRedLed  =  5;
const int lockedGrnLed  =  4;
const int tuneManualLed =  3;

const int ocxoCSPreR   = A0;
const int ocxoCSPstR   = A1;
const int pllSensePort = A2;

#elif BOARD_MICRO==1

const int gpsEnabledPort =  2;
const int tuneSelectPort = 11;

const int fixRedLed      =  6;
const int fixGrnLed      =  7;

const int heaterRedLed  = 10;
const int heaterGrnLed  =  9;
const int lockedRedLed  =  8;
const int lockedGrnLed  =  4;
const int tuneManualLed =  3;

const int ocxoCSPreR   = A0;
const int ocxoCSPstR   = A1;
const int pllSensePort = A2;

#else

#error "Board unsupported!"

#endif

AltSoftSerial gpsSerial;

TinyGPS gps;

static const boolean debugState = false;
static const boolean debugPll   = false;

/** Returns the amount of free SRAM.
 *
 */
static int freeSRam ()
{
  extern int __heap_start, *__brkval;
  int v;
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}

/** GpsdOcxo state definition and assessment routines.
 *
 */
class State
{
  
  private:

    /** Gps is activated through the front panel switch.
     *
     */
    boolean gpsEnabled = false;
    
    /** Gps has been heard through (internal) rs-232 connection.
     *
     *  Implies gpsEnabled.
     *
     */
    boolean gpsHeard = false;
    
    /** A gps message has been decoded recently.
     *
     *  Implies gpsHeard.
     *
     */
    boolean gpsDecoded = false;
    
    /** Gps has a (recent enough) fix.
     *
     *  Implies gpsDecoded.
     *
     */
    boolean gpsFix = false;
    
    /** Ocxo is activated through the front panel switch.
     *
     */
    boolean ocxoEnabled = false;
    
    /** Ocxo is heating up, as confirmed through current sensing.
     *
     * Implies ocxoEnabled.
     *
     * It is an error if the Ocxo is enabled, yet not heating.
     *
     */
    boolean ocxoHeating = false;
    
    /** The Ocxo is almost (or completely) on temperature, and has started decreasing its (heater) current.
     *
     */
     boolean ocxoAlmostHeated = false;
     
    /** Ocxo has been brough on temperature through its oven.
     *
     * Implies ocxoEnabled and ocxoHeating.
     *
     */
    boolean ocxoHeated = false;
    
    /** The Ocxo tuning is performed (attempted) by the PLL as per front-panel setting.
     *
     */
    boolean tunePll = false;
    
    /** The Pll is in its first stage of attempting to lock the Ocxo with Gps.
     *
     * Pll lock is acquired when the phase comparator output signal has been stable for a
     * long enough period, say T.
     * Hence, once Pll locking has been activated, we need at least T before even considering
     * the state as being 'locked'.
     * During this initial period of length T, we say the Pll is in initHunt mode.
     *
     * Implies ocxoEnabled and tunePll.
     *
     */
    boolean pllInitHunt = true;
    
    /** The Pll has locked the Ocxo to Gps.
     *
     * Implies gpsEnabled, gpsHeard, gpsFix, ocxoEnabled, tunePll and ~pllInitHunt.
     * Note that ocxoHeated may not necessarily be true.
     *
     */
    boolean pllLocked = false;
  
    static const int PLL_SHST_SIZE = 256;
    
    int pllSenseHistoryShortTerm[PLL_SHST_SIZE];
    
    int pllSHSTIndex = 0;
    
    static const int PLL_SHLT_SIZE = 256;
    
    int pllSenseHistoryLongTerm[PLL_SHLT_SIZE];
    
    int pllSHLTIndex = 0;
    
    unsigned long secondsGpsLastHeard = 0l;

    unsigned long secondsGpsLastDecoded = 0l;
    
    unsigned long secondsOcxoHeated = 0l;
    
    unsigned long millisLastUpdate = 0l;
    
    unsigned long millisCycles = 0l;
    
    static unsigned long secondsSinceStart ()
    {
      return millis () / ((unsigned long) 1000l);
    }
    
  public:
  
    boolean isGpsEnabled () const
    {
      return gpsEnabled;
    }
    
    boolean isGpsHeard () const
    {
      return gpsHeard;
    }

    boolean isGpsDecoded () const
    {
      return gpsDecoded;
    }
    
    boolean isGpsFix () const
    {
      return gpsFix;
    }
    
    boolean isOcxoEnabled () const
    {
      return ocxoEnabled;
    }
    
    boolean isOcxoHeating () const
    {
      return ocxoHeating;
    }
    
    boolean isOcxoAlmostHeated () const
    {
      return ocxoAlmostHeated;
    }
    
    boolean isOcxoHeated () const
    {
      return ocxoHeated;
    }
    
    boolean isTunePll () const
    {
      return tunePll;
    }
    
    boolean isTuneManual () const
    {
      return ! tunePll;
    }

    boolean isPllInitHunt () const
    {
      return pllInitHunt;
    }
    
    boolean isPllLocked () const
    {
      return pllLocked;
    }

    /** Initialize Gps (unpon cold-bood or upon activating Gps).
     *  
     */
    void initGps ()
    {
      // XXX Disable for now...
      return;
      // Serial.println ("initGps");
      delay (100l);
      // Set binary (Zodiac) mode from NMEA.
      gpsSerial.write ("$PRWIIPRO,,RBIN\r\n");
      delay (100l);
      gpsSerial.write ("$PRWIIPRO,,RBIN\r\n");
      delay (100l);
      gpsSerial.write ("$PRWIIPRO,,RBIN\r\n");
      delay (100l);
      // Switch to 9600 bps from 4800 bps.
      gpsSerial.write ("\x32\x05\x00\x00\x01\x00\x01\x00\x00\x00\x00\x00\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf8\xff");
      delay (100l);
      // Switch to 9600 bps ourselves.
      gpsSerial.end ();
      delay (100l);
      gpsSerial.begin (9600);
      delay (100l);
      // Set NMEA from binary (Zodiac) mode.
      gpsSerial.write ("\x33\x05\x00\x00\x00\x00\x01\x00\xff\xff");
      delay (100l);
      gpsSerial.write ("\x33\x05\x00\x00\x00\x00\x01\x00\xff\xff");
      delay (100l);
      // Set the time using NMEA; this should fix the week-number roll-over problem (but it does not help...).
      // String setting the time and date to 20151231 00:00:00.
      gpsSerial.print ("$PRWIINIT,A,,,,,,,,,,,,000000,311215\r\n");
      delay (100l);
      gpsSerial.print ("$PRWIINIT,A,,,,,,,,,,,,000000,311215\r\n");
      delay (100l);
    }
    
    /** Assesses the Gps state.
     *
     */
    void assessGps ()
    {
      const boolean gpsWasEnabled = this->gpsEnabled;
      const boolean gpsEnabled = digitalRead (gpsEnabledPort);
      this->gpsEnabled = gpsEnabled;
      if (gpsEnabled)
      {
        if (! gpsWasEnabled)
          initGps ();
        boolean gpsDecoded = false;
        if (gpsSerial.available ())
        {
          const char c = gpsSerial.read ();
          //Serial.print (c);
          this->secondsGpsLastHeard = secondsSinceStart ();
          gpsDecoded = gps.encode (c);
          if (gpsDecoded)
            this->secondsGpsLastDecoded = this->secondsGpsLastHeard;        
        }
        this->gpsHeard = this->secondsGpsLastHeard > 0 && secondsSinceStart () - this->secondsGpsLastHeard < 10l; // Make constant...
        this->gpsDecoded = this->gpsHeard && secondsSinceStart () - this->secondsGpsLastDecoded < 2l; // Make constant...
        if (this->gpsHeard)
        {
          if (gpsDecoded)
          {
            unsigned long date, time; // Dummies!
            unsigned long fixAge;
            gps.get_datetime (&date, &time, &fixAge);
            this->gpsFix = (fixAge != TinyGPS::GPS_INVALID_AGE && fixAge < 1000l); // XXX Make constant...
          }
          else if (! this->gpsDecoded)
            this->gpsFix = false;
        }
        else
          this->gpsFix = false;        
      }
      else
      {
        this->gpsHeard = false;
        this->gpsFix = false;
      }
    }
    
    void assessOcxo ()
    {
      const int ocxoCSPreRAD = analogRead (ocxoCSPreR);
      const boolean ocxoEnabled =  ocxoCSPreRAD > 100; // XXX Need constant; roughly 500mV at input; roughly 3V at hot side of resistor.
      this->ocxoEnabled = ocxoEnabled;
      if (ocxoEnabled)
      {
        // The OCXO Current-Sense Resisor, in Ohms.
        const double ocxoCSR = 2.0;
        // We use a resistive divider consisting of 2k2 (to gnd) and 10k (in signal line).
        const double Vdiv = 2.2 / (10.0 + 2.2);
        const int ocxoCSPstRAD = analogRead (ocxoCSPstR);
        const float ocxoVin = (5.0 / Vdiv) * (ocxoCSPreRAD / 1024.0); // XXX Requires santiy check; fuse may be blown!
        const float ocxoI = (5.0 / Vdiv) * ((ocxoCSPreRAD - ocxoCSPstRAD) / 1024.0) / ocxoCSR;
        this->ocxoHeating = (ocxoI >= 0.1);
        if (this->ocxoHeating)
        {
          this->ocxoHeated = (ocxoI < 0.4);
          if (this->ocxoHeated)
          {
            this->ocxoAlmostHeated = true;
            this->secondsOcxoHeated = secondsSinceStart ();
          }
          else
            this->ocxoAlmostHeated = this->secondsOcxoHeated > 0 && secondsSinceStart () - this->secondsOcxoHeated < 5l; // Make constant...
        }
        else
        {
          this->ocxoAlmostHeated = false;
          this->ocxoHeated = false;
        }
      }
      else
      {
        this->ocxoHeating = false;
        this->ocxoHeated = false;
      }
    }
    
    void assessPll ()
    {
      const int maxDevForLock = 2; // XXX Make constant...
      const boolean tunePll = digitalRead (tuneSelectPort);
      this->tunePll = tunePll;
      if (this->ocxoEnabled && tunePll && this->gpsEnabled && this->gpsFix)
      {
        const int pllSense = analogRead (pllSensePort);
        if (this->pllSHSTIndex == this->PLL_SHST_SIZE - 1)
        {
          this->pllSenseHistoryShortTerm[this->pllSHSTIndex] = pllSense;
          double pllSHSTCum = 0;
          int pllSHSTMin = 0;
          int pllSHSTMax = 0;
          for (int i = 0; i < this->PLL_SHST_SIZE; i++)
          {
            const int pllSHSTVal = this->pllSenseHistoryShortTerm[i];
            pllSHSTCum += pllSHSTVal;
            if (i == 0)
            {
              pllSHSTMin = pllSHSTVal;
              pllSHSTMax = pllSHSTVal;
            }
            else
            {
              if (pllSHSTVal < pllSHSTMin)
                pllSHSTMin = pllSHSTVal;
              if (pllSHSTVal > pllSHSTMax)
                pllSHSTMax = pllSHSTVal;
            }
          }
          const double pllSHSTAvg = pllSHSTCum / this->PLL_SHST_SIZE;
          this->pllSHSTIndex = 0;
          if (pllSHSTMax - pllSHSTMin > maxDevForLock)
          {
            this->pllInitHunt = true;
            this->pllSHSTIndex = 0;
            this->pllSHLTIndex = 0;
            this->pllLocked = false;
          }
          else
          {
            this->pllSenseHistoryLongTerm[this->pllSHLTIndex++] = round (pllSHSTAvg);
            if (this->pllSHLTIndex == PLL_SHLT_SIZE)
            {
              this->pllSHLTIndex = 0;
              this->pllInitHunt = false;
            }
            if (! this->pllInitHunt)
            {
              int pllSHLTMin = 0;
              int pllSHLTMax = 0;
              for (int j = 0; j < this->PLL_SHLT_SIZE; j++)
              {
                const int pllSHLTVal = this->pllSenseHistoryLongTerm[j];
                if (j == 0)
                {
                  pllSHLTMin = pllSHLTVal;
                  pllSHLTMax = pllSHLTVal;
                }
                else
                {
                  if (pllSHLTVal < pllSHLTMin)
                    pllSHLTMin = pllSHLTVal;
                  if (pllSHLTVal > pllSHLTMax)
                    pllSHLTMax = pllSHLTVal;
                }
              }
              this->pllLocked = (pllSHLTMax - pllSHLTMin <= maxDevForLock);
              if (debugPll && this->pllSHLTIndex == 0)
              {
                Serial.print ("PLL Sense: MinST=");
                Serial.print (pllSHSTMin);
                Serial.print (", MaxST=");
                Serial.print (pllSHSTMax);
                Serial.print (", MinLT=");
                Serial.print (pllSHLTMin);
                Serial.print (", MaxLT=");
                Serial.print (pllSHLTMax);
                Serial.print (", Lock=");
                Serial.print (this->pllLocked ? "true" : "false");
                Serial.print (", Time=");
                Serial.print (millis ());
                Serial.print (", AvSRam=");
                Serial.print (freeSRam ());
                Serial.println (".");
              }
            }
          }
        }
        else
        {
          this->pllSenseHistoryShortTerm[this->pllSHSTIndex++] = pllSense;
        }
      }
      else
      {
        this->pllInitHunt = true;
        this->pllSHSTIndex = 0;
        this->pllLocked = false;
      }
    }
    
    void updateTime ()
    {
      const unsigned long millisNow = millis ();
      this->millisLastUpdate = millisNow;
    }
    
    void assess ()
    {
      assessGps ();
      assessOcxo ();
      assessPll ();
      updateTime ();
    }
  
};

static State *state = new State;

static void logState ()
{
  Serial.println ("GpsdOcxo State:");
  Serial.print ("  gpsEnabled=");
  Serial.println (state->isGpsEnabled () ? "true" : "false");
  if (state->isGpsEnabled ())
  {
    Serial.print ("    gpsHeard=");  
    Serial.println (state->isGpsHeard () ? "true" : "false");
    Serial.print ("    gpsFix=");  
    Serial.println (state->isGpsFix () ? "true" : "false");
  }
  Serial.print ("  ocxoEnabled=");
  Serial.println (state->isOcxoEnabled () ? "true" : "false");
  if (state->isOcxoEnabled ())
  {
    Serial.print ("    ocxoHeating=");  
    Serial.println (state->isOcxoHeating () ? "true" : "false");
    Serial.print ("    ocxoAlmostHeated=");  
    Serial.println (state->isOcxoAlmostHeated () ? "true" : "false");
    Serial.print ("    ocxoHeated=");  
    Serial.println (state->isOcxoHeated () ? "true" : "false");
    Serial.print ("    tune=");  
    Serial.println (state->isTunePll () ? "pll" : "man");
    if (state->isTunePll ())
    {
      Serial.print ("    locked=");  
      Serial.println (state->isPllLocked () ? "true" : "false");
    }
  }
}

class BlinkState
{
  
  public:

  boolean red_25 ()
  {
    return millis () % 1000l >= 750;    
  }
  
  boolean red_50 ()
  {
    return millis () % 1000l >= 500;
  }
  
  boolean red_75 ()
  {
    return millis () % 1000l >= 250;
  }
  
};

static BlinkState *blinkState = new BlinkState;

/** Sets the Gps-Leds on the front panel, based upon the current state.
 *
 */
static void setLedsGps ()
{
  if (state->isGpsEnabled ())
  {
    if (state->isGpsFix ())
    {
      digitalWrite (fixRedLed, HIGH);
      digitalWrite (fixGrnLed, LOW);
    }
    else if (state->isGpsDecoded ())
    {
      boolean red = blinkState->red_25 ();
      digitalWrite (fixRedLed, red ? LOW : HIGH);
      digitalWrite (fixGrnLed, red ? HIGH : LOW);
    }
    else if (state->isGpsHeard ())
    {
      boolean red = blinkState->red_75 ();
      digitalWrite (fixRedLed, red ? LOW : HIGH);
      digitalWrite (fixGrnLed, red ? HIGH : LOW);
    }
    else
    {
      boolean red = blinkState->red_50 ();
      digitalWrite (fixRedLed, red ? LOW : HIGH);
      digitalWrite (fixGrnLed, HIGH);
    }
  }
  else
  {
    digitalWrite (fixRedLed,  HIGH);
    digitalWrite (fixGrnLed,  HIGH);
  }
}

/** Sets the Ocxo-Leds on the front panel, based upon the current state.
 *
 */
static void setLedsOcxo ()
{
  if (state->isOcxoEnabled ())
  {
    if (state->isOcxoHeating ())
    {
      if (state->isOcxoHeated ())
      {
        digitalWrite (heaterRedLed, HIGH);
        digitalWrite (heaterGrnLed, LOW);
      }
      else
      {
        if (state->isOcxoAlmostHeated ())
        {
          digitalWrite (heaterRedLed, LOW);
          digitalWrite (heaterGrnLed, HIGH);
        }
        else
        {
          boolean red = blinkState->red_50 ();
          digitalWrite (heaterRedLed, red ? LOW : HIGH);
          digitalWrite (heaterGrnLed, red ? HIGH : LOW);
        }
      }
      if (state->isTunePll ())
      {
        if (state->isPllLocked ())
        {
          digitalWrite (lockedRedLed, HIGH);
          digitalWrite (lockedGrnLed, LOW);
        }
        else if (state->isGpsFix ())
        {
          boolean red = (state->isPllInitHunt () ? blinkState->red_75 () : blinkState->red_50 ());
          digitalWrite (lockedRedLed, red ? LOW : HIGH);
          digitalWrite (lockedGrnLed, red ? HIGH : LOW);
        }
        else
        {
          digitalWrite (lockedRedLed, LOW);
          digitalWrite (lockedGrnLed, HIGH);
        }
        digitalWrite (tuneManualLed, HIGH);
      }
      else
      {
        digitalWrite (lockedRedLed,  HIGH);
        digitalWrite (lockedGrnLed,  HIGH);
        digitalWrite (tuneManualLed, LOW);
      }
    }
    else
    {
      boolean on = blinkState->red_50 ();
      digitalWrite (heaterRedLed, on ? LOW : HIGH);
      digitalWrite (heaterGrnLed,  HIGH);
      digitalWrite (lockedRedLed,  HIGH);
      digitalWrite (lockedGrnLed,  HIGH);
      digitalWrite (tuneManualLed, HIGH);
    }
  }
  else
  {
    digitalWrite (heaterRedLed,  HIGH);
    digitalWrite (heaterGrnLed,  HIGH);
    digitalWrite (lockedRedLed,  HIGH);
    digitalWrite (lockedGrnLed,  HIGH);
    digitalWrite (tuneManualLed, HIGH);
  }
}

static void blinkLedMulti (int led, unsigned int count, unsigned long millisOn, unsigned long millisOff)
{
  for (unsigned int i = 0; i < count; i++)
  {
    digitalWrite (led, LOW);
    delay (millisOn);
    digitalWrite (led, HIGH);
    delay (millisOff);
  }
}

static void salute ()
{
  blinkLedMulti (fixRedLed,     1, 500l, 500l);
  blinkLedMulti (fixGrnLed,     1, 500l, 500l);
  blinkLedMulti (heaterRedLed,  2, 250l, 250l);
  blinkLedMulti (heaterGrnLed,  2, 250l, 250l);
  blinkLedMulti (lockedRedLed,  4, 125l, 125l);
  blinkLedMulti (lockedGrnLed,  4, 125l, 125l);
  blinkLedMulti (tuneManualLed, 8,  62l,  62l);
}

// the setup routine runs once when you press reset:
void setup () 
{
  pinMode (gpsEnabledPort, INPUT);
  pinMode (tuneSelectPort, INPUT);
  pinMode (fixRedLed,      OUTPUT); digitalWrite (fixRedLed,     HIGH);
  pinMode (fixGrnLed,      OUTPUT); digitalWrite (fixGrnLed,     HIGH);
  pinMode (heaterRedLed,   OUTPUT); digitalWrite (heaterRedLed,  HIGH);
  pinMode (heaterGrnLed,   OUTPUT); digitalWrite (heaterGrnLed,  HIGH);
  pinMode (lockedRedLed,   OUTPUT); digitalWrite (lockedRedLed,  HIGH);
  pinMode (lockedGrnLed,   OUTPUT); digitalWrite (lockedGrnLed,  HIGH);
  pinMode (tuneManualLed,  OUTPUT); digitalWrite (tuneManualLed, HIGH);
  gpsSerial.begin (4800);
  Serial.begin (9600);
  delay (1000l);
  salute ();
} 

// the loop routine runs over and over again forever:
void loop ()
{

  static int counter = 0;

  if (debugState && counter++ == 10000)
  {
//    Serial.print ("pa3gyf gpsdocxo - heartbeat...");
//    Serial.print (" Version: ");
//    Serial.print (majorVersion);
//    Serial.print (".");
//    Serial.print (minorVersion);
//    Serial.print (" Board: ");
//    Serial.print (BOARD_UNO ? "UNO" : (BOARD_MICRO ? "MICRO" : "UNKNOWN"));
//    Serial.println ();
    logState ();
    counter = 0;
  }
  
  state->assess ();
  setLedsGps ();
  setLedsOcxo ();
  
}


