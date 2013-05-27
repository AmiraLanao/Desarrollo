package univer.bean;

import univer.util.Bean;

public class Curso extends Bean {
	
	private static final long serialVersionUID = 1L;
	
	String chrCurCodigo;
	String chrAlumCodigo;
	String chrNotaCodigo;
	String chrHoraCodigo;
	String chrAsisCodigo;
	String vchCurNombre;
	int intCurCreditos;

	public Curso() {
		super();
	}

	public String getChrCurCodigo() {
		return chrCurCodigo;
	}


	public void setChrCurCodigo(String chrCurCodigo) {
		this.chrCurCodigo = chrCurCodigo;
	}


	public String getChrAlumCodigo() {
		return chrAlumCodigo;
	}


	public void setChrAlumCodigo(String chrAlumCodigo) {
		this.chrAlumCodigo = chrAlumCodigo;
	}


	public String getChrNotaCodigo() {
		return chrNotaCodigo;
	}


	public void setChrNotaCodigo(String chrNotaCodigo) {
		this.chrNotaCodigo = chrNotaCodigo;
	}


	public String getChrHoraCodigo() {
		return chrHoraCodigo;
	}


	public void setChrHoraCodigo(String chrHoraCodigo) {
		this.chrHoraCodigo = chrHoraCodigo;
	}


	public String getChrAsisCodigo() {
		return chrAsisCodigo;
	}


	public void setChrAsisCodigo(String chrAsisCodigo) {
		this.chrAsisCodigo = chrAsisCodigo;
	}


	public String getVchCurNombre() {
		return vchCurNombre;
	}


	public void setVchCurNombre(String vchCurNombre) {
		this.vchCurNombre = vchCurNombre;
	}


	public int getIntCurCreditos() {
		return intCurCreditos;
	}


	public void setIntCurCreditos(int intCurCreditos) {
		this.intCurCreditos = intCurCreditos;
	}

	
	
	
}
