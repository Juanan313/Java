package org.mvpigs.furnaceKata.Interfaces;

import org.mvpigs.furnaceKata.Interfaces.Thermometer;
import org.mvpigs.furnaceKata.Interfaces.Heater;
import org.mvpigs.furnaceKata.EnumCodes.RegulatorDisplayCodes;
import org.mvpigs.furnaceKata.Interfaces.*; 
import org.mvpigs.furnaceKata.AmbientTemperature;

public interface Regulable {
    public void regulate(Thermometer t, Heater h, double minTemp, double maxTemp, AmbientTemperature temperature);
	public void message(RegulatorDisplayCodes code, AmbientTemperature temperature);
}