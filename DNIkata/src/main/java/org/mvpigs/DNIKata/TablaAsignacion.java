package org.mvpigs.DNIKata;

import java.util.Arrays;

public class TablaAsignacion {

    static char [] tablaAsignacion = {'T','R','W','A','G','M','Y','F','P','D','X','B','N','J','Z','S','Q','V','H','L','C','K','E'};
    static char [] letraNie = {'X','Y','Z'};
    
    public char[] getTabla(){
        return tablaAsignacion;
    }
    
    public char getLetra(int indice) {
        return tablaAsignacion[indice];
    }


    public char calcularLetra(int DNI) {
        return tablaAsignacion[DNI%23];
    }

    
}