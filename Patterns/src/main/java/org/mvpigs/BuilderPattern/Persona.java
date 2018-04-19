package org.mvpigs.BuilderPattern;

public class Persona {

    // Atributos clase persona

    private String nombre;
    private int edad;
    private String municipio;
    private String colegio;
    private String lugarTrabajo;
    
    
    private Persona() {}


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

    public static class Builder {

        private Persona persona;

        public Builder(String nombre) {
            persona = new Persona();
            persona.setNombre(nombre);
        }

        
    }


}