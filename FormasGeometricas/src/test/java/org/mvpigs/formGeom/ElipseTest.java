package org.mvpigs.formGeom;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class ElipseTest {

    Elipse elipse = new Elipse("Elipse", 3.0, 2.0);
    Elipse elipse1 = new Elipse(4.0,3.0);

    @Test
    public void elipseTestConstructor() {

        assertEquals("Elipse", elipse.getNombre());
        assertEquals(4.0, elipse1.getRadioMayor(), 0.1);
    }
    @Test
    public void elipseTestArea() {

        assertEquals(37.68, elipse1.calcularArea(), 0.5);
        assertEquals(18.84, elipse.calcularArea(), 0.5);
        
    }

}