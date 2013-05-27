package univer.bean;

import univer.util.Bean;

public class Pension extends Bean {
	

	private static final long serialVersionUID = 1L;
	
	String chrPensCodigo;
	String chrAluCodigo;
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


	public String getChrAluCodigo() {
		return chrAluCodigo;
	}


	public void setChrAluCodigo(String chrAluCodigo) {
		this.chrAluCodigo = chrAluCodigo;
	}


	public int getIntPensMonto() {
		return intPensMonto;
	}


	public void setIntPensMonto(int intPensMonto) {
		this.intPensMonto = intPensMonto;
	}


	
	
}
