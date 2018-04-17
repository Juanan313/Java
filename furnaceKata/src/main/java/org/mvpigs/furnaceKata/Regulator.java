package org.mvpigs.furnaceKata;

import org.mvpigs.furnaceKata.Interfaces.Thermometer;
import org.mvpigs.furnaceKata.Interfaces.Heater;
import org.mvpigs.furnaceKata.EnumCodes.RegulatorDisplayCodes;
import org.mvpigs.furnaceKata.Interfaces.*; 

public class Regulator implements Regulable {
	
	public void regulate(Thermometer t, Heater h, double minTemp, double maxTemp, AmbientTemperature temperature){
			RegulatorDisplayCodes code;
			while(t.read(temperature) < maxTemp){
				code = RegulatorDisplayCodes.HEATING;				
				h.engage(temperature);
				message(code, temperature);
			}
			while (t.read(temperature) > minTemp){
				code = RegulatorDisplayCodes.WAITING;
				h.disengage(temperature);			
				message(code, temperature);
			}
	}

	public void message(RegulatorDisplayCodes code, AmbientTemperature temperature){
			switch (code) {
				case HEATING:
					System.out.println("I'm heating right now, and my temperature is:  " + temperature.getTemperature());
					break;
				case WAITING:
					System.out.println("Waiting 4 start to heat your home:  " + temperature.getTemperature());
					break;
				default:
					System.out.println("Dunno whats happening :(");
					break;
			}
	}

}