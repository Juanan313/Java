package org.mvpigs.FactoryPattern.factorymethod;

public class LavadoraFrontalFactory extends LavadoraFactory {

    // como que extends loco no es una extensión   ### BY: LAZARO 24/04/2018 18:07 ###  

    @Override
    public Lavadora creaLavadoraTipo() {
        return new LavadoraCargaFrontal();
    }

}