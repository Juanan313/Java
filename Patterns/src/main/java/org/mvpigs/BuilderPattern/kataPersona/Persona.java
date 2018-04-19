package org.mvpigs.BuilderPattern.kataPersona;

public class Persona {

	// Atributos de la clase Persona

	private String nombre;
	private int edad;
	private String municipio;
	private String colegio;
	private String lugarTrabajo;
	private boolean mayorEdad;

	// Getter y setter Nombre

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	// Getter y setter Edad

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	// Getter y setter Municipio

	public String getMunicipio() {
		return municipio;
	}

	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}

	// Getter y setter colegio

	public String getColegio() {
		return colegio;
	}

	public void setColegio(String colegio) {
		this.colegio = colegio;
	}

	// Getter y setter lugar de trabajo

	public String getLugarTrabajo() {
		return lugarTrabajo;
	}

	public void setLugarTrabajo(String lugarTrabajo) {
		this.lugarTrabajo = lugarTrabajo;
	};

	// Getter y setter mayorEdad	

	public boolean isMayorEdad() {
		return mayorEdad;
	}

	public void setMayorEdad(boolean mayorEdad) {
		this.mayorEdad = mayorEdad;
	}

	// Constructor clase persona en privado para que no se pueda acceder a él

	private Persona() {
	}

	public String toString() {
		String mayorEdad = "Nombre: " + getNombre() + ", Edad: " + getEdad() + ", Municipio: " + getMunicipio()
				+ " y Lugar de trabajo: " + getLugarTrabajo() + ".";
		String menorEdad = "Nombre: " + getNombre() + ", Edad: " + getEdad() + ", Colegio: " + getColegio() + ".";

		if (this.isMayorEdad()) {
			return mayorEdad;
		} else {

			return menorEdad;
		}
	}

	// Inner class Builder --> Top level por ser Static

	public static class Builder {
		private Persona persona;

		public Builder(String nombre) {
			persona = new Persona();
			persona.nombre = nombre;
		}

		public Builder setMunicipio(String municipio) {
			persona.municipio = municipio;
			return this;
		}

		// Setters Mayor Edad

		public BuildMayor setMayor(int edad) {
			if (edad < 18)
				throw new IllegalArgumentException("es menor de edad " + edad);
			BuildMayor constructorAdulto = new BuildMayor(persona);
			constructorAdulto.setMayor(edad);
			return constructorAdulto;
		}

		// public Builder setLugarTrabajo(String lugarTrabajo) {

		// 	if (!persona.isMayorEdad()) {
		// 		throw new IllegalArgumentException("es menor de edad " + persona.edad);
		// 	}
		// 	persona.lugarTrabajo = lugarTrabajo;
		// 	return this;
		// }

		//Setter Menor Edad

		public BuildMenor setMenor(int edad) {
				if (edad > 18)
					throw new IllegalArgumentException("es mayor de edad " + edad);
				BuildMenor constructorMenor = persona.new BuildMenor(persona);
				constructorMenor.setMenor(edad);
				return constructorMenor;
		}

		// public Builder setColegio(String colegio) {
		// 	if (persona.isMayorEdad()) {
		// 		throw new IllegalArgumentException("es mayor de edad " + persona.edad);
		// 	}
		// 	persona.colegio = colegio;
		// 	return this;
		// }

		public Persona build() {
			return persona;
		}

	}

	public static class BuildMayor {
		private Persona personaAdulta;

		public BuildMayor(Persona persona) {
			personaAdulta = persona;
		}

		public BuildMayor setMayor(int edad) {
			personaAdulta.edad = edad;
			personaAdulta.colegio = null;
			personaAdulta.mayorEdad = true;
			return this;
		}

		public BuildMayor setLugarTrabajo(String lugarTrabajo) {
			personaAdulta.setLugarTrabajo(lugarTrabajo);
			return this;
		}

		public Persona build() {
			return personaAdulta;
		}
	}

	public class BuildMenor {

		private Persona personaMenor;

		public BuildMenor(Persona persona) {
			personaMenor = persona;
		}

		public BuildMenor setMenor(int edad) {
			if (edad >= 18)
				throw new IllegalArgumentException("es mayor de edad " + edad);
			personaMenor.edad = edad;
			personaMenor.lugarTrabajo = null;
			personaMenor.mayorEdad = false;

			return this;
		}

		public BuildMenor setColegio(String colegio) {
			personaMenor.colegio = colegio;
			return this;
		}

		public Persona build() {
			return personaMenor;
		}
		
	}

}
