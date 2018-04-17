package org.mvpigs.furnaceKata;

import org.mvpigs.furnaceKata.Interfaces.Heater;

public class GasHeater implements Heater {

	@Override
	public void engage(AmbientTemperature temperature) {
        double temp = temperature.getTemperature()+0.1;
		temperature.setTemperature(temp);
	}

	@Override
	public void disengage(AmbientTemperature temperature) {
		double temp = temperature.getTemperature()-0.2;
		temperature.setTemperature(temp);
	}

}