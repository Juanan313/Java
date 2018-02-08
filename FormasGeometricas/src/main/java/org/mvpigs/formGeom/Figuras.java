package org.mvpigs.formGeom;

import java.util.ArrayList;

public class Figuras {

    public static void main(String[] args) {

        ArrayList<FiguraGeometrica> figuras = new ArrayList();

        Rectangulo rectangulo = new Rectangulo("Rectangulo1", 5.0, 6.0);
        Rectangulo rectangulo2 = new Rectangulo(2.0, 4.0);

        Circulo circulo = new Circulo("Circulo", 1.5);
        Circulo circulo2 = new Circulo(2.5);

        Cuadrado cuadrado = new Cuadrado("cuadrado", 2.0);
        Cuadrado cuadrado2 = new Cuadrado(5.0);

        Elipse elipse = new Elipse("Elipse", 3.0, 2.0);
        Elipse elipse1 = new Elipse(4.0, 3.0);

        figuras.add(rectangulo);
        figuras.add(rectangulo2);
        figuras.add(circulo);
        figuras.add(circulo2);
        figuras.add(cuadrado);
        figuras.add(cuadrado2);
        figuras.add(elipse);
        figuras.add(elipse1);

        for (FiguraGeometrica figura : figuras) {
            System.out.println("Area del " + figura.getNombre() + " es: " + figura.calcularArea());
        }

    }
}