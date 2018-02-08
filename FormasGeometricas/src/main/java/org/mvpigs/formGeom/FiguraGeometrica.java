package org.mvpigs.formGeom;

public abstract class FiguraGeometrica {

    private String nombre = null;

    public FiguraGeometrica() {
        this.nombre = "desconocido";
    }

    public FiguraGeometrica(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public abstract double calcularArea();
}