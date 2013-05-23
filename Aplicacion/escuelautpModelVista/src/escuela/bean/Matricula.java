package escuela.bean;

import escuela.util.*;

public class Matricula extends Bean {

	private String MatriCodigo;
	private String AlumnoCodigo;
	private String ProducCodigo;
	private int    MatriPrecio;
	private int    MatriCuotas;
	
	public Matricula() {
		super();

	}

	public String getMatriCodigo() {
		return MatriCodigo;
	}

	public void setMatriCodigo(String matriCodigo) {
		MatriCodigo = matriCodigo;
	}

	public String getAlumnoCodigo() {
		return AlumnoCodigo;
	}

	public void setAlumnoCodigo(String alumnoCodigo) {
		AlumnoCodigo = alumnoCodigo;
	}

	public String getProducCodigo() {
		return ProducCodigo;
	}

	public void setProducCodigo(String producCodigo) {
		ProducCodigo = producCodigo;
	}

	public int getMatriPrecio() {
		return MatriPrecio;
	}

	public void setMatriPrecio(int matriPrecio) {
		MatriPrecio = matriPrecio;
	}

	public int getMatriCuotas() {
		return MatriCuotas;
	}

	public void setMatriCuotas(int matriCuotas) {
		MatriCuotas = matriCuotas;
	}
	
	
	
	
	
}
