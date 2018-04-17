package org.mvpigs.furnaceKata.Interfaces;

import org.mvpigs.furnaceKata.AmbientTemperature;

public interface Heater{

    public void engage(AmbientTemperature temperature);
    
    public void disengage(AmbientTemperature temperature);

}