package org.mvpigs.furnaceKata;

import org.mvpigs.furnaceKata.GasHeater;
import org.mvpigs.furnaceKata.AmbientTemperature;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class TestGasHeater{
    @Test
    public void testBasic() {
        GasHeater gasHeater = new GasHeater();
        AmbientTemperature temperature = new AmbientTemperature(15.00);
        gasHeater.engage(temperature);
        assertEquals(15.10, temperature.getTemperature(), 0.01);
    }
}