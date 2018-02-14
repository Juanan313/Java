package org.mvpigs.Bicipalma;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

/**
 * BicicletaTest
 */
public class BicicletaTest {

    Bicicleta bicicleta = new Bicicleta();
    Bicicleta bicicleta2 = new Bicicleta(123);

    @Test
    public void consultarBicicleta() {

        assertEquals(bicicleta.getId(), 000);
        assertEquals(bicicleta2.getId(), 123);

    }

}