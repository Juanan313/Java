package org.mvpigs.furnaceKata;

import org.mvpigs.furnaceKata.Interfaces.Thermometer;
import org.mvpigs.furnaceKata.AmbientTemperature;

public class PhoneAppThermometer implements Thermometer {

	@Override
	public double read(AmbientTemperature temperature) {
		return temperature.getTemperature();
	}

}