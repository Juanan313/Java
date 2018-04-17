package org.mvpigs.furnaceKata;

import org.mvpigs.furnaceKata.Interfaces.Heater;
import org.mvpigs.furnaceKata.Interfaces.Thermometer;


public class AppDIP {
    public static void main( String[] args ){ 
        final double minTemp = 15.0;
        final double maxTemp = 21.0;
        
        AmbientTemperature temperature = new AmbientTemperature(15);
        Heater heater = new GasHeater();
        Thermometer thermometer = new PhoneAppThermometer();
        
        Regulator regulator = new Regulator();
        
        regulator.regulate(thermometer, heater, minTemp, maxTemp, temperature);
        
    }
}