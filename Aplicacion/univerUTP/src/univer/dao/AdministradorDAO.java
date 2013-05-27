
package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;

public class AdministradorDAO {
	
public AdministradorDAO() {
	super();
}



public void CambiaPassword(String strCodigo, String strPassword)throws SQLException {

	Connection conn=getConnection();	
	Statement stm=conn.createStatement();
	String sql="";
	
	sql="UPDATE Administrador SET chrAdmPassword='";
	sql+=strPassword+"' WHERE chrAdmCodigo='"+strCodigo+"'";
	
	stm.executeUpdate(sql);

	stm.close();
	conn.close();	
	
}

//Para obtener una conexion.
private Connection getConnection(){
	
	DBConn cnx=new DBConn();	
	return cnx.getConnection();
}

public Administrador validarLogin(String strLogin, String strPassword)throws SQLException {

	Administrador objAdministrador=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Administrador WHERE chrAdmLogin='"+strLogin+"' AND chrAdmPassword='"+strPassword+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
			
		objAdministrador=new Administrador();
		
		objAdministrador.setCodigo(rst.getString(1));	
		objAdministrador.setLogin(rst.getString(2));
		objAdministrador.setPassword(rst.getString(3));
		objAdministrador.setNombres(rst.getString(4));
		objAdministrador.setApellidos(rst.getString(5));
	}

	rst.close();
	stm.close();
	conn.close();
		
	return objAdministrador;	
}

}