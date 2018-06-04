package org.mvpigs.clases;

public class Hora {
	private int hora;
	private int minutos;
	private int segundos;
	
	public Hora() {
		this.hora = 0;
		this.minutos = 0;
		this.segundos = 0;
	}
	
	public Hora(int hora, int minutos, int segundos) {
		
		/* Restricciones:
		 *  0 > hora < 24
		 *  0 > minutos < 59
		 */	
		this.hora = controLFormatoHora(hora);
		this.minutos = controlFormatoMinutosSegundos(minutos);
		this.segundos = controlFormatoSegundos(segundos);

	}
	
	
	/*Parte pública*/
	
	public int controLFormatoHora(int hora) {
		if(hora >= 0 && hora <= 24) {
			return hora;
		} else {
			return 0;
		}
	}
	
	public int controlFormatoMinutosSegundos(int minutos) {
		
		if(minutos >= 0 && minutos <= 59) {
			return minutos;
		} else {
			return 0;
		}
	}
	
	public int controlFormatoSegundos(int segundos) {
		
		if(segundos >= 0 && segundos <= 59) {
			return segundos;
		} else {
			return 0;
		}
	}
	
	public void imprimirHora() {
		System.out.println(this.hora + ":" + this.minutos + ":" + this.segundos);
	}
	
	public void setHora(int hora,int minutos,int segundos){
		this.hora = controLFormatoHora(hora);
		this.minutos = controlFormatoMinutosSegundos(minutos);
		this.segundos = controlFormatoSegundos(segundos);
	}

	public void setHora(int hora) {
		this.hora = hora;
	}
	
	
	public int getHora() {
		return this.hora;
	}
	

	public int getMinutos() {
		return this.minutos;
	}

	public void setMinutos(int minutos) {
		this.minutos = minutos;
	}

	public int getSegundos() {
		return this.segundos;
	}

	public void setSegundos(int segundos) {
		this.segundos = segundos;
	}


}