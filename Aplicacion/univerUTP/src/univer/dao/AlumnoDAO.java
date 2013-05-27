
package univer.dao;


import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import univer.bean.*;
import univer.util.*;

public class AlumnoDAO {

public AlumnoDAO() {
	super();
}


DateFormat dateFormat;




//Para obtener una conexion.
private Connection getConnection(){
	
	DBConn cnx=new DBConn();	
	return cnx.getConnection();
}


public Lista obtenerAlumnos() throws Exception {

	//Dar Formato a la fecha
	dateFormat = new SimpleDateFormat("dd-MM-yyyy");
	
	Alumno objEntidad=null;

	Lista objLista=new Lista(); 

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno";
	
	ResultSet rst=stm.executeQuery(sql);
	
	
	
	while(rst.next()){
		
		objEntidad=new Alumno();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setApellidos(rst.getString(3));
		objEntidad.setFechaNac(dateFormat.format(rst.getDate(4)));
		objEntidad.setSexo(rst.getString(5));
		
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;
	
}


public Alumno obtenerAlumnoPK(String strCodigo) throws Exception {

	//Dar Formato a la fecha
	dateFormat = new SimpleDateFormat("dd-MM-yyyy");	
	
	Alumno objEntidad=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno WHERE chrAluCodigo='"+strCodigo+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Alumno();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setApellidos(rst.getString(3));
		objEntidad.setFechaNac(dateFormat.format(rst.getDate(4)));
		objEntidad.setSexo(rst.getString(5));

	}

	rst.close();
	stm.close();
	conn.close();
	
	return objEntidad;

	
}

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


public String GenerarCodAlum() throws Exception {

	Date nuevo = new Date();
	
	DateFormat df = new SimpleDateFormat("yyMM");
	
	
	int numCurs=1;
	String gencodtcurs="";

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		//contador para saber la cantidad de curso.
		numCurs = numCurs + 1;
		
	}
	
	numCurs=330 + numCurs;
	
	gencodtcurs ="CA"+df.format(nuevo)+numCurs;
	
		
	rst.close();
	stm.close();
	conn.close();
	
	return gencodtcurs;
	
}



/*======================================= Listar Alumnos por Curso ==========================================================*/

public Lista obtenerAlumnosCUR(String strCodigo) throws Exception {
	
	//Dar Formato a la fecha
	dateFormat = new SimpleDateFormat("dd-MM-yyyy");
	
	
	Alumno objEntidad=null;
	Lista objLista=new Lista(); 

	Connection conn=getConnection();
	Statement stm=conn.createStatement();	
	
	String sql="";
		
	sql=" select alu.chrAluCodigo, alu.vchAluNombres, alu.vchAluApellidos, alu.dtmAluFechaNac, alu.chrAluSexo "  +
		" from Alumno as alu" +
		" join Matricula as matri" +
		" on alu.chrAluCodigo=matri.chrAluCodigo" +
		" where matri.chrCursCodigo ='"+strCodigo+"'";
 
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Alumno();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setApellidos(rst.getString(3));
		objEntidad.setFechaNac(dateFormat.format(rst.getDate(4)));
		objEntidad.setSexo(rst.getString(5));
		
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;

}


public Alumno validarAlum(String strLogin, String strPassword)throws SQLException {


	//Dar Formato a la fecha
	dateFormat = new SimpleDateFormat("dd-MM-yyyy");	
	
	Alumno objAlumno=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Alumno WHERE chrAluCodigo='"+strLogin+"' AND vchAluApellidos='"+strPassword+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
			
		objAlumno=new Alumno();
		
		objAlumno.setCodigo(rst.getString(1));
		objAlumno.setNombres(rst.getString(2));
		objAlumno.setApellidos(rst.getString(3));
		objAlumno.setFechaNac(dateFormat.format(rst.getDate(4)));
		objAlumno.setSexo(rst.getString(5));
	}

	rst.close();
	stm.close();
	conn.close();
		
	return objAlumno;	
}



}