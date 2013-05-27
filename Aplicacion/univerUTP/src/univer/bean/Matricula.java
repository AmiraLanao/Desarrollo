package univer.bean;

import univer.util.*;

public class Matricula extends Bean {

	private String MatriCodigo;
	private String AlumnoCodigo;
	private String CursoCodigo;
	private String AlumCodNota;
	private String AlumCodAsist;
	
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

	public String getCursoCodigo() {
		return CursoCodigo;
	}

	public void setCursoCodigo(String cursoCodigo) {
		CursoCodigo = cursoCodigo;
	}

	public String getAlumCodNota() {
		return AlumCodNota;
	}

	public void setAlumCodNota(String alumCodNota) {
		AlumCodNota = alumCodNota;
	}

	public String getAlumCodAsist() {
		return AlumCodAsist;
	}

	public void setAlumCodAsist(String alumCodAsist) {
		AlumCodAsist = alumCodAsist;
	}


	
}
