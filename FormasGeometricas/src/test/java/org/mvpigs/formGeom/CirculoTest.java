package org.mvpigs.formGeom;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class CirculoTest {
    Circulo circulo = new Circulo(5);

    @Test
    public void CirculoTestConstructor() {

        assertEquals(5.0,circulo.getRadio(), 0.1);

    }
    @Test
    public void CirculoTestArea() {

        assertEquals(78.5,circulo.calcularArea(),0.5);
    }
}