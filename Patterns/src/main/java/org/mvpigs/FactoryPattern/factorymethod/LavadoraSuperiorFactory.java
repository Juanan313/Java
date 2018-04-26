package org.mvpigs.FactoryPattern.factorymethod;

public class LavadoraSuperiorFactory extends LavadoraFactory {

    @Override
    public Lavadora creaLavadoraTipo() {
        return new LavadoraCargaSuperior();
    }
}