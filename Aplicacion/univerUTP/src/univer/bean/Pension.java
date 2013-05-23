package univer.bean;

import univer.util.Bean;

public class Pension extends Bean {
	

	private static final long serialVersionUID = 1L;
	
	String chrPensCodigo;
	int intPensMonto;
	
	public Pension() {
		super();
	}

	public String getChrPensCodigo() {
		return chrPensCodigo;
	}

	public void setChrPensCodigo(String chrPensCodigo) {
		this.chrPensCodigo = chrPensCodigo;
	}

	public int getIntPensMonto() {
		return intPensMonto;
	}

	public void setIntPensMonto(int intPensMonto) {
		this.intPensMonto = intPensMonto;
	}	
	
	
	
}
