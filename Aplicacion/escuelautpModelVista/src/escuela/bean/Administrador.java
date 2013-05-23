package escuela.bean;


public class Administrador {
	private java.lang.String Login;
	private java.lang.String Password;
	private java.lang.String Nombres;
	private java.lang.String Apellidos;
	private java.lang.String Codigo;

public Administrador() {
	super();
}

public java.lang.String getApellidos() {
	return Apellidos;
}

public java.lang.String getCodigo() {
	return Codigo;
}

public java.lang.String getLogin() {
	return Login;
}

public java.lang.String getNombres() {
	return Nombres;
}

public java.lang.String getPassword() {
	return Password;
}

public void setApellidos(java.lang.String newApellidos) {
	Apellidos = newApellidos;
}

public void setCodigo(java.lang.String newCodigo) {
	Codigo = newCodigo;
}

public void setLogin(java.lang.String newLogin) {
	Login = newLogin;
}

public void setNombres(java.lang.String newNombres) {
	Nombres = newNombres;
}

public void setPassword(java.lang.String newPassword) {
	Password = newPassword;
}

}