package org.mvpigs.BuilderPattern.kataPersona;

public class Main {

	public static void main (String[] args) {

		// este codigo debe compilar
		
		Persona madre = new Persona.Builder("Maria")
                .setMunicipio("Selva")
                .setMayor(37)
                .setLugarTrabajo("Google")
		.build();

		System.out.println("/----------------------/");
		System.out.println("Prueba mayor Edad");
		System.out.println(madre.toString());
		System.out.println("/----------------------/");
		
		Persona hijo = new Persona.Builder("Pedro")
                .setMenor(4)
                .setColegio("Colegio de Selva")
		.build();
		
		System.out.println("Prueba menor Edad");
		System.out.println(hijo.toString());
		System.out.println("/----------------------/");
		// esta codigo NO debe compilar
		
		// Persona mal = new Persona.Builder("Luisa")
		// 		    .setMayor(20)
		// 		    .setColegio("Colegio de Villa Arriba")
		// 		    .build();

	}
}
