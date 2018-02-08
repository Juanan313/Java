package org.mvpigs.formGeom;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

/**
 * CuadradoTest
 */
public class CuadradoTest {

    Cuadrado cuadrado = new Cuadrado("cuadrado", 2.0);
    Cuadrado cuadrado2 = new Cuadrado(5.0);

    @Test
    public void cuadradoTestConstructor() {

        System.out.println(cuadrado.getLado());
        System.out.println(cuadrado2.getLado());
        assertEquals("cuadrado", cuadrado.getNombre());
        assertEquals(5.0, cuadrado2.getLado(), 0.1);
    }
    @Test
    public void cuadradoTestCalcularArea() {

        assertEquals(25.0,cuadrado2.calcularArea(), 0.1);
        assertEquals(4.0, cuadrado.calcularArea(), 0.1);        
    }
    

}