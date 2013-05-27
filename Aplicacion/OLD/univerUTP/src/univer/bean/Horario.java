package univer.bean;

import univer.util.Bean;

public class Horario extends Bean {

	private static final long serialVersionUID = 1L;
	
	String chrHoraCodigo;
	String chrHoraDiaUno;
	String vchHoraDiaUnoH;
	String chrHoraDiaDos;
	String vchHoraDiaDosH;

	public Horario() {
		super();

	}

	public String getChrHoraCodigo() {
		return chrHoraCodigo;
	}

	public void setChrHoraCodigo(String chrHoraCodigo) {
		this.chrHoraCodigo = chrHoraCodigo;
	}

	public String getChrHoraDiaUno() {
		return chrHoraDiaUno;
	}

	public void setChrHoraDiaUno(String chrHoraDiaUno) {
		this.chrHoraDiaUno = chrHoraDiaUno;
	}

	public String getVchHoraDiaUnoH() {
		return vchHoraDiaUnoH;
	}

	public void setVchHoraDiaUnoH(String vchHoraDiaUnoH) {
		this.vchHoraDiaUnoH = vchHoraDiaUnoH;
	}

	public String getChrHoraDiaDos() {
		return chrHoraDiaDos;
	}

	public void setChrHoraDiaDos(String chrHoraDiaDos) {
		this.chrHoraDiaDos = chrHoraDiaDos;
	}

	public String getVchHoraDiaDosH() {
		return vchHoraDiaDosH;
	}

	public void setVchHoraDiaDosH(String vchHoraDiaDosH) {
		this.vchHoraDiaDosH = vchHoraDiaDosH;
	} 
	
	
	
}
