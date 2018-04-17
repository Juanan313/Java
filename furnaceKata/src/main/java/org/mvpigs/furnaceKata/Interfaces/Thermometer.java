package org.mvpigs.furnaceKata.Interfaces;

import org.mvpigs.furnaceKata.AmbientTemperature;

public interface Thermometer {
    public double read(AmbientTemperature temperature);
}