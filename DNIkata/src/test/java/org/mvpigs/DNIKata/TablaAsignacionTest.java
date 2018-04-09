package org.mvpigs.DNIKata;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class TablaAsignacionTest {
    
    @Test
    public  void asignacionLetraTest() {

        //System.out.println("El resultado es: "+"\n"+TablaAsignacion.tablaAsignacion[12]);  
        assertEquals('N', TablaAsignacion.tablaAsignacion[12]);
        assertEquals('X',TablaAsignacion.tablaAsignacion[10] );
    }
}