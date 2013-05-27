package escuela.bean;

import escuela.util.*;

public class Producto extends Bean {
	
	private String Codigo;
	private String Nombres;
	private int    vacante;
	
	public Producto() {
		super();
	}
	
	
	public String getCodigo() {
		return Codigo;
	}
	public void setCodigo(String codigo) {
		Codigo = codigo;
	}
	public String getNombres() {
		return Nombres;
	}
	public void setNombres(String nombres) {
		Nombres = nombres;
	}
	public int getVacante() {
		return vacante;
	}
	public void setVacante(int vacante) {
		this.vacante = vacante;
	}
	
	
	
	
	
	
}
