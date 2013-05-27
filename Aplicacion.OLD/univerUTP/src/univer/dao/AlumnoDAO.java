
package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;

public class AlumnoDAO {

public AlumnoDAO() {
	super();
}


//Para obtener una conexion.
private Connection getConnection(){
	
	DBConn cnx=new DBConn();	
	return cnx.getConnection();
}


public void CambiaPassword(String chrAlumCodigo, String chrAlumContras)throws SQLException {

	Connection conn=getConnection();	
	Statement stm=conn.createStatement();
	String sql="";
	
	sql="UPDATE Alumno SET chrAlumContras='";
	sql+=chrAlumContras+"' WHERE chrAlumCodigo='"+chrAlumCodigo+"'";
	
	stm.executeUpdate(sql);

	stm.close();
	conn.close();	
	
}


public Alumno validarLogin(String chrAlumCodigo, String chrAlumContras)throws SQLException {

	Alumno objEntidad=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno WHERE chrAlumCodigo='"+chrAlumCodigo+"' AND chrAlumContras='"+chrAlumContras+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
			
		objEntidad=new Alumno();
		
		objEntidad.setChrAlumCodigo(rst.getString(1));
		objEntidad.setChrAlumContras(rst.getString(2));
		objEntidad.setVchAlumNombres(rst.getString(3));
		objEntidad.setVchAlumApellidos(rst.getString(4));
		objEntidad.setVchAlumFaculta(rst.getString(5));
		objEntidad.setChrPensCodigo(rst.getString(6));
	}

	rst.close();
	stm.close();
	conn.close();
		
	return objEntidad;	
}


public Lista obtenerAlumnos() throws Exception {

	Alumno objEntidad=null;

	Lista objLista=new Lista(); 

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Alumno();
		
		objEntidad.setChrAlumCodigo(rst.getString(1));
		objEntidad.setChrAlumContras(rst.getString(2));
		objEntidad.setVchAlumNombres(rst.getString(3));
		objEntidad.setVchAlumApellidos(rst.getString(4));
		objEntidad.setVchAlumFaculta(rst.getString(5));
		objEntidad.setChrPensCodigo(rst.getString(6));
		
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;
	
}


public Alumno obtenerAlumnoPK(String chrAlumCodigo) throws Exception {

	Alumno objEntidad=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno WHERE chrAlumCodigo='"+chrAlumCodigo+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Alumno();
		
		objEntidad.setChrAlumCodigo(rst.getString(1));
		objEntidad.setChrAlumContras(rst.getString(2));
		objEntidad.setVchAlumNombres(rst.getString(3));
		objEntidad.setVchAlumApellidos(rst.getString(4));
		objEntidad.setVchAlumFaculta(rst.getString(5));
		objEntidad.setChrPensCodigo(rst.getString(6));

	}

	rst.close();
	stm.close();
	conn.close();
	
	return objEntidad;

	
}










/*======================================= Datos Adicionales ==========================================================*/

/*
public void actualizar(Alumno entidad) throws Exception {
	
	String sql;
	
	sql="UPDATE Alumno set vchAluNombres='"+entidad.getNombres() + "',"
						  +" vchAluApellidos='"+entidad.getApellidos()+"', dtmAluFechaNac='"+entidad.getFechaNac()+"',"
		   				  +" chrAluSexo='"+entidad.getSexo()+"' WHERE chrAluCodigo='"+entidad.getCodigo()+"'";
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();			   					
}

public void eliminar(String strCodigo) throws Exception {
	
	String sql;
	
	sql="DELETE FROM Alumno WHERE chrAluCodigo='"+strCodigo+"'";
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();
}

public void insertar(Alumno entidad) throws Exception {
	String sql;
	
	sql="INSERT INTO Alumno(chrAluCodigo, vchAluNombres, vchAluApellidos, dtmAluFechaNac, chrAluSexo)"
		+" VALUES('"+entidad.getCodigo()+"','"+entidad.getNombres()+ "','"+entidad.getApellidos()+"','"
		+entidad.getFechaNac()+"','"+entidad.getSexo()+"')";

	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();	
}



======================================= Listar Alumnos por Producto ==========================================================

public Lista obtenerAlumnosPRO(String strCodigo) throws Exception {
	
	Alumno objEntidad=null;
	Lista objLista=new Lista(); 

	Connection conn=getConnection();
	Statement stm=conn.createStatement();	
	
	String sql="";
		
	sql=" select alu.chrAluCodigo, alu.vchAluNombres, alu.vchAluApellidos, alu.dtmAluFechaNac" +
		" from Alumno as alu" +
		" join Matricula as matri" +
		" on alu.chrAluCodigo=matri.chrAluCodigo" +
		" where matri.chrProCodigo = '"+strCodigo+"'";
 
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Alumno();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setApellidos(rst.getString(3));
		objEntidad.setFechaNac(rst.getString(4));
		
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;

}
*/




}