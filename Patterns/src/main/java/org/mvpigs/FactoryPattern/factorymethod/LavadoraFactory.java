package org.mvpigs.FactoryPattern.factorymethod;

public abstract class LavadoraFactory {

    public Lavadora crearLavadora() {
        Lavadora lavadora = creaLavadoraTipo();
        lavadora.ponerMandos();
        lavadora.ponerTambor();
        return lavadora;
    }

    protected abstract Lavadora creaLavadoraTipo();



}