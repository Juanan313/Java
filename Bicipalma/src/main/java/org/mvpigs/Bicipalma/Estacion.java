package org.mvpigs.Bicipalma;

import java.util.concurrent.ThreadLocalRandom;

/**
 * Estacion
 */
public class Estacion {

    private int Id = 0;
    private String direccion = null;
    private int numeroAnclajes = 0;
    private Bicicleta[] anclajes = null;

    public Estacion() {

    }

    public Estacion(int id, String direccion, int numeroAnclajes) {
        this.Id = id;
        this.direccion = direccion;
        this.numeroAnclajes = numeroAnclajes;
        this.anclajes = new Bicicleta[numeroAnclajes];
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.Id = id;
    }

    /**
     * @param numeroAnclajes the numeroAnclajes to set
     */
    public void setNumeroAnclajes(int numeroAnclajes) {
        this.numeroAnclajes = numeroAnclajes;
    }

    /**
     * @param anclajes the anclajes to set
     */
    public void setAnclajes(Bicicleta[] anclajes) {
        this.anclajes = anclajes;
    }

    /**
     * @return the id
     */
    public int getId() {
        return Id;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @return the numeroAnclajes
     */
    public int getNumeroAnclajes() {
        return numeroAnclajes;
    }

    /**
     * @return the anclajes
     */
    public Bicicleta[] getAnclajes() {
        return anclajes;
    }

    public String consultarEstacion() {

        return "Id: " + getId() + ", Direccion: " + getDireccion() + ", numero de anclajes: " + getNumeroAnclajes();

    }

    public void mostrarAnclaje(Bicicleta bicicleta, int numeroAnclaje) {

        // Muestra por consola el Id de la bicicleta y el anclaje en el que está
        System.out.println("Id bicicleta: " + bicicleta.getId() + ", Numero de Anclaje: " + numeroAnclaje);

    }

    public void anclarBicicleta(Bicicleta bicicleta) {

        for (int i = 0; i < anclajes.length; i++) {
            if (anclajes[i] == null) {
                this.anclajes[i] = bicicleta;
                mostrarAnclaje(bicicleta, i);
                break;

            }
        }
    }

    public boolean leerTarjetaUsuario(TarjetaUsuario tarjetaUsuario) {

        return tarjetaUsuario.isActivada();
    }

    public int anclajesLibres() {

        int anclajesLibres = 0;

        for (int i = 0; i <= this.getNumeroAnclajes(); i++) {
            if (this.getAnclajes()[i] == null) {
                anclajesLibres++;
            } else;
        }
        return anclajesLibres;
    }

    public void retirarBicicleta(TarjetaUsuario tarjetaUsuario) {

        if (tarjetaUsuario.isActivada()) {

            int posicion = generarAnclaje();

            for (int i=0; i <= this.getNumeroAnclajes(); i++) {
                if (this.getAnclajes()[posicion] != null) {
                    mostrarBicicleta(this.getAnclajes()[posicion], posicion+1);
                    this.getAnclajes()[posicion] = null; 
                } else;
            }
        } else {
            System.out.println("Tarjeta de usuario inactiva :(");
        }
    }

    public int generarAnclaje(){ // a hardware anclaje
		Integer numeroEntero = ThreadLocalRandom.current().nextInt(0, this.anclajes.length); 
		return numeroEntero;
    }
    
    public void mostrarBicicleta(Bicicleta bicicleta, int numeroAnclaje) {
        System.out.println("Bicicleta retirada: "+bicicleta.getId()+" del anclaje: "+numeroAnclaje);
    }

    public void consultarAnclajes() {

        int posicion = 0;
        int numeroAnclaje = 0;
        for (Bicicleta bicicleta: this.getAnclajes()) {
            numeroAnclaje = posicion + 1;
            if (bicicleta != null) {
                System.out.println("Anclaje " + numeroAnclaje + " " + this.anclajes[posicion].getId());
            } else {
                System.out.println("Anclaje " + numeroAnclaje + " " + " libre");
            }
        } posicion++;
    }
}