package org.mvpigs.formGeom;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class RectanguloTest {
    Rectangulo rectangulo = new Rectangulo(6.0, 5.0);
    Rectangulo rectangulo1 = new Rectangulo("Rectangulo", 3.0, 2.0);
    @Test
    public void RectanguloTestConstructor() {

        assertEquals(6.0, rectangulo.getAltura(), 0.1);
        assertEquals(5.0, rectangulo.getAncho(),0.1);
        assertEquals("Rectangulo", rectangulo1.getNombre());
    }
    @Test
    public void RectanguloTestArea() {

        assertEquals(30.0, rectangulo.calcularArea(), 0.1);
        assertEquals(6.0,rectangulo1.calcularArea(), 0);
    }
}