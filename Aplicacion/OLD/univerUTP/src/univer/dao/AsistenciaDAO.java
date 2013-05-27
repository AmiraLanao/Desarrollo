package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;


public class AsistenciaDAO {

	public AsistenciaDAO() {
		super();
	}

	
	//Para obtener una conexion.
	private Connection getConnection(){
		
		DBConn cnx=new DBConn();	
		return cnx.getConnection();
	}

	
	/*=====================================  Listar Asistencia x Alumno ============================================*/
	public Lista obtenerAsisCursAlum(String chrAlumCodigo) throws Exception {
		
		Asistencia objEntidad=null;
		Lista objLista=new Lista(); 

		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		
		String sql="";

		  sql = " select  asi.chrAsisCodigo, asi.intAsiSem1, asi.intAsiSem2, "+  
			    " asi.intAsiSem3, asi.intAsiSem4, asi.intAsiSem5, asi.intAsiSem6, asi.intAsiSem7, "+ 
				" asi.intAsiSem8, asi.intAsiSem9, asi.intAsiSem10 "+
				" from Curso as curs "+
				" inner join Alumno as alu "+
				" on curs.chrAlumCodigo = alu.chrAlumCodigo "+
				" join Asistencia as asi "+
				" on asi.chrAsisCodigo = curs.chrAsisCodigo "+
				" where alu.chrAlumCodigo='"+chrAlumCodigo+"'";

		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Asistencia();
			
			objEntidad.setChrAsisCodigo(rst.getString(1));
			objEntidad.setIntAsiSem1(rst.getInt(2));
			objEntidad.setIntAsiSem2(rst.getInt(3));
			objEntidad.setIntAsiSem3(rst.getInt(4));
			objEntidad.setIntAsiSem4(rst.getInt(5));
			objEntidad.setIntAsiSem5(rst.getInt(6));
			objEntidad.setIntAsiSem6(rst.getInt(7));
			objEntidad.setIntAsiSem7(rst.getInt(8));
			objEntidad.setIntAsiSem8(rst.getInt(9));
			objEntidad.setIntAsiSem9(rst.getInt(10));
			objEntidad.setIntAsiSem10(rst.getInt(11));
			
			objLista.setElemento(objEntidad);				
		}

		rst.close();
		stm.close();
		conn.close();
		
		return objLista;

	}	
	
	
	
	
	
	
}
