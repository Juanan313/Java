package org.mvpigs.furnaceKata;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.mvpigs.furnaceKata.Interfaces.Thermometer;
import org.mvpigs.furnaceKata.Interfaces.Heater;

public class RegulatorTest {
    @Test
    public void testRegulador(){

        Thermometer t = new PhoneAppThermometer();
        Heater h = new GasHeater();
        AmbientTemperature ambientTemperature = new AmbientTemperature(16.33);

        Regulator regulator = new Regulator();
        regulator.regulate(t, h, 15.0, 23.0, ambientTemperature);

        assertEquals(14.83, ambientTemperature.getTemperature(), 0.01);
    }
}