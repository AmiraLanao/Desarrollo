package univer.util;

/*
** Clase que permite la conexi�n a una BD
*/

import java.util.*;
import java.sql.*;
import java.io.*;
 
 
 public class DBConn{
	 
		private static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		private static String url = "jdbc:sqlserver://localhost:1433;databaseName=univerUTP";
		private static String usuario = "java";
		private static String password = "java";
	
	
	static{		
		try{
			Class.forName(driver);
		}
		catch(Exception e){
			System.out.println(e.toString());
		}
	}

/**
 * Retorna una conexi�n a la Base de Datos.
 */
public Connection getConnection() {
	Connection connection=null;
	try{
		connection = DriverManager.getConnection(url,usuario,password);
	}
	catch(SQLException e){
		//Error en base de datos no se puede lograr la conexion
		System.out.println(e.toString());
	}		
	return connection;
}

}
 