package org.mvpigs.clases;

class CuentaCorriente {

    private String nombre;
	private String apellidos;
	private String direccion;
	private String telefono;
	private Double saldo;
	private DNI nif;

    // Constructor
    public CuentaCorriente() {}

    // Overloading del constructor
    public CuentaCorriente(String nombre, String apellidos, String direccion, String telefono, Double saldo) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.direccion = direccion;
		this.telefono = telefono;
		this.saldo = saldo;
    }

	/**
	 * @return the nif
	 */
	public DNI getNif() {
		return nif;
	}

	/**
	 * @param nif the nif to set
	 */
	public void setNif(DNI nif) {
		this.nif = nif;
	}

	/**
	 * @return the saldo
	 */
	public Double getSaldo() {
		return saldo;
	}

	/**
	 * @param saldo the saldo to set
	 */
	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}

	/**
	 * @return the telefono
	 */
	public String getTelefono() {
		return telefono;
	}

	/**
	 * @param telefono the telefono to set
	 */
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	/**
	 * @return the direccion
	 */
	public String getDireccion() {
		return direccion;
	}

	/**
	 * @param direccion the direccion to set
	 */
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the apellidos
	 */
	public String getApellidos() {
		return apellidos;
	}

	/**
	 * @param apellidos the apellidos to set
	 */
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

    public void retirarDinero(Double retirado){
		this.setSaldo(this.getSaldo() - retirado);
	}
    
    public void ingresarDinero(Double ingresado){
		this.setSaldo(this.getSaldo() + ingresado);
    }
    
    public void consultarDatosCuenta() {
        System.out.println("-------------------------------------------");
        System.out.println("Datos cuenta de " + nombre + " " + apellidos);
		System.out.println("Dirección: " + direccion);
		System.out.println("Teléfono " + telefono);
        System.out.println("Saldo: " + saldo);
        System.out.println("-------------------------------------------");
    }

    public boolean isSaldoNegativo() {
        return this.getSaldo() < 0;
    }

    
}