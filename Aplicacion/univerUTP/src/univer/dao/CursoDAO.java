package univer.dao;


import java.sql.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import univer.bean.*;
import univer.util.*;

public class CursoDAO {

private Connection getConnection(){
	
	DBConn cnx=new DBConn();	
	return cnx.getConnection();
}


public Lista obtenerCurso() throws Exception {

	Curso objEntidad=null;

	Lista objLista=new Lista(); 

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Curso";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Curso();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setVacante(rst.getInt(3));
		objEntidad.setCredito(rst.getInt(4));
		objEntidad.setHorario(rst.getString(5));
		
		
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;
	
}


public Curso obtenerCursoPK(String strCodigo) throws Exception {

	Curso objEntidad=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Curso WHERE chrCursCodigo='"+strCodigo+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Curso();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setVacante(rst.getInt(3));
		objEntidad.setCredito(rst.getInt(4));
		objEntidad.setHorario(rst.getString(5));
		
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objEntidad;

	
}

public void actualizar(Curso entidad) throws Exception {
	
	String sql;
	
	sql="UPDATE Curso set vchCursNombre='"+entidad.getNombres()+"', vchCursVacante="+entidad.getVacante()+", vchCursCredito="+entidad.getCredito()+", vchCursHorario='"+entidad.getHorario()+"'  WHERE chrCursCodigo='"+entidad.getCodigo()+"'";

	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();			   					
}




public void insertar(Curso entidad) throws Exception {
	String sql;
	
	sql="INSERT INTO Curso(chrCursCodigo,vchCursNombre,vchCursVacante,vchCursCredito,vchCursHorario) "
	    +"values('"+entidad.getCodigo()+"','"+entidad.getNombres()+"',"+entidad.getVacante()+","+entidad.getCredito()+",'"+entidad.getHorario()+"')";
	
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();	
}



public void eliminar(String strCodigo) throws Exception {
	
	String sql;
	
	sql="DELETE FROM Curso WHERE chrCursCodigo='"+strCodigo+"'";
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();
}


public String GenerarCodCurs() throws Exception {

	int numCurs=1;
	String gencodtcurs="";

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Curso";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		//contador para saber la cantidad de curso.
		numCurs = numCurs + 1;
		
	}
	if(numCurs<10)
		gencodtcurs ="C0"+numCurs;	
	else
		gencodtcurs ="C"+numCurs;

	rst.close();
	stm.close();
	conn.close();
	
	return gencodtcurs;
	
}


/*=====================================  Listar Cursos x Alumno ============================================*/
public Lista obtenerCursAlum(String chrAlumCodigo) throws Exception {
	
	Curso objEntidad=null;
	Lista objLista=new Lista(); 

	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	
	String sql="";

	sql=" select curs.chrCursCodigo, curs.vchCursNombre ,curs.vchCursVacante ,curs.vchCursCredito ,curs.vchCursHorario "+
		" from Curso as curs "+
		" inner join Matricula as matri "+
		" on curs.chrCursCodigo=matri.chrCursCodigo "+
		" join Alumno as alu "+
		" on alu.chrAluCodigo=matri.chrAluCodigo "+
		" where alu.chrAluCodigo='"+chrAlumCodigo+"'";
	

	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Curso();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setVacante(rst.getInt(3));
		objEntidad.setCredito(rst.getInt(4));
		objEntidad.setHorario(rst.getString(5));
		
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;

}	


/*=======================================  Resta la cantidad de Vacantes ==========================================================*/

public void restaVacantes(String strCodigo) throws Exception {
	
	CursoDAO objEntidadDAO =new CursoDAO();
	Curso objEntidadC = new Curso();
	
	objEntidadC = objEntidadDAO.obtenerCursoPK(strCodigo);
	
	int vacante = 0;
			
	if(objEntidadC.getVacante()>0){
		
		vacante = objEntidadC.getVacante()-1;
	
	String sql;
	
	sql="UPDATE Curso set vchCursVacante="+vacante+" WHERE chrCursCodigo='"+objEntidadC.getCodigo()+"'";
	
	
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();
	
	};
	
	
}
/*=======================================  Resta la cantidad de Vacantes ==========================================================*/


}