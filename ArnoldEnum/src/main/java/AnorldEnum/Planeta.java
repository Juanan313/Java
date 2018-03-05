package AnorldEnum;

public enum Planeta {
    MERCURY(3.303e+23, 2.4397e6),
    VENUS(4.869e+24, 6.0518e6),     
    EARTH   (5.976e+24, 6.37814e6),     
    MARS    (6.421e+23, 3.3972e6),     
    JUPITER (1.9e+27,   7.1492e7),     
    SATURN  (5.688e+26, 6.0268e7),     
    URANUS  (8.686e+25, 2.5559e7),     
    NEPTUNE (1.024e+26, 2.4746e7); 

    private double masa;
    private double radio;
    private double G = 6.67300E-11;

    private Planeta(double masa, double radio) {
        this.masa = masa;
        this.radio = radio;
    }

	public double getMasa() {
		return masa;
    }
    
    public double getRadio() {
        return radio;
    }

	public double getG() {
		return G;
	}

    public double calcularGravedadSuperficial() {
        return G * getMasa() / (getRadio()*getRadio());
    }

    public double getMasaHumano(double pesoHumano) {
        return pesoHumano / EARTH.calcularGravedadSuperficial();
    }

    public double pesoSuperficie(double pesoHumano) {
        double masaHumano = getMasaHumano(pesoHumano);
        return masaHumano * calcularGravedadSuperficial();
    }

    public static Planeta[] getPlanetasTerrestres() {

        Planeta[] planetasTerrestres = new Planeta[4];

        for (int i = Planeta.MERCURY.ordinal(); i < Planeta.JUPITER.ordinal(); i++) {
			planetasTerrestres[i] = Planeta.values()[i];
		}

        return planetasTerrestres;
    }

    public static Planeta[] getGigantesGaseosos() {

        Planeta[] gigantesGaseosos = new Planeta[4];

        byte index = 0;
		for (int i = Planeta.JUPITER.ordinal(); i <= Planeta.NEPTUNE.ordinal(); i++) {
			gigantesGaseosos[index] = Planeta.values()[i];
			index += 1;
        }
        return gigantesGaseosos;
    }
}