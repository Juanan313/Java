package org.mvpigs.Bicipalma;

/**
 * TarjetaUsuario
 */
public class TarjetaUsuario {

    private String id = "";
    private boolean activada = false;

    public TarjetaUsuario() {

    }

    public TarjetaUsuario(String id) {
        this.id = id;

    }

    public TarjetaUsuario(String id, boolean activada) {
        this.id = id;
        this.activada = activada;

    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @return the activada
     */
    public boolean isActivada() {
        return activada;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @param activada the activada to set
     */
    public void setActivada(boolean activada) {
        this.activada = activada;
    }

}