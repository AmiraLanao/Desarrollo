package univer.bean;

import univer.util.*;

public class Alumno extends Bean {

	private static final long serialVersionUID = 1L;
	
	private String chrAlumCodigo;
	private String chrAlumContras;
	private String vchAlumNombres;
	private String vchAlumApellidos;
	private String vchAlumFaculta;
	private String chrPensCodigo;

	public Alumno() {
		super();
	}

	public String getChrAlumCodigo() {
		return chrAlumCodigo;
	}

	public void setChrAlumCodigo(String chrAlumCodigo) {
		this.chrAlumCodigo = chrAlumCodigo;
	}

	public String getChrAlumContras() {
		return chrAlumContras;
	}

	public void setChrAlumContras(String chrAlumContras) {
		this.chrAlumContras = chrAlumContras;
	}

	public String getVchAlumNombres() {
		return vchAlumNombres;
	}

	public void setVchAlumNombres(String vchAlumNombres) {
		this.vchAlumNombres = vchAlumNombres;
	}

	public String getVchAlumApellidos() {
		return vchAlumApellidos;
	}

	public void setVchAlumApellidos(String vchAlumApellidos) {
		this.vchAlumApellidos = vchAlumApellidos;
	}

	public String getVchAlumFaculta() {
		return vchAlumFaculta;
	}

	public void setVchAlumFaculta(String vchAlumFaculta) {
		this.vchAlumFaculta = vchAlumFaculta;
	}

	public String getChrPensCodigo() {
		return chrPensCodigo;
	}

	public void setChrPensCodigo(String chrPensCodigo) {
		this.chrPensCodigo = chrPensCodigo;
	}

	
	
}
