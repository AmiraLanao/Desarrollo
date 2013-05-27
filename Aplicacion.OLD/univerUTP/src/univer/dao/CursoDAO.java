package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;


public class CursoDAO {

	public CursoDAO() {
		super();
	}

	//Para obtener una conexion.
	private Connection getConnection(){
		
		DBConn cnx=new DBConn();	
		return cnx.getConnection();
	}

	
	/*=====================================  Listar Cursos x Alumno ============================================*/
	public Lista obtenerCursAlum(String chrAlumCodigo) throws Exception {
		
		Curso objEntidad=null;
		Lista objLista=new Lista(); 

		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		
		String sql="";
		
		sql=" select curs.chrCurCodigo, curs.chrAlumCodigo, curs.chrNotaCodigo, "+
			" curs.chrHoraCodigo, curs.chrAsisCodigo, curs.vchCurNombre, curs.intCurCreditos "+
			" from Curso as curs "+
			" inner join Alumno as alu "+
			" on curs.chrAlumCodigo = alu.chrAlumCodigo "+
			" where alu.chrAlumCodigo='"+chrAlumCodigo+"'";
		

		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Curso();
			
			objEntidad.setChrCurCodigo(rst.getString(1));
			objEntidad.setChrAlumCodigo(rst.getString(2));
			objEntidad.setChrNotaCodigo(rst.getString(3));
			objEntidad.setChrHoraCodigo(rst.getString(4));
			objEntidad.setChrAsisCodigo(rst.getString(5));
			objEntidad.setVchCurNombre(rst.getString(6));
			objEntidad.setIntCurCreditos(rst.getInt(7));

			
			objLista.setElemento(objEntidad);				
		}

		rst.close();
		stm.close();
		conn.close();
		
		return objLista;

	}	
		
	
	
}
