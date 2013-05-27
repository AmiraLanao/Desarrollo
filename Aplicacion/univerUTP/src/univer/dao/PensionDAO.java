package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;


public class PensionDAO {

	public PensionDAO() {
		super();
	}

	
	//Para obtener una conexion.
	private Connection getConnection(){
		
		DBConn cnx=new DBConn();	
		return cnx.getConnection();
	}
	
	public String GenerarCodPens() throws Exception {

		int num=1;
		String genCodtPens="";

		String sql="";
		
		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		
		sql="SELECT * FROM Alumno";
		
		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			//contador para saber la cantidad de curso.
			num = num + 1;
			
		}

		genCodtPens ="CP"+(100+num);

		rst.close();
		stm.close();
		conn.close();
		
		return genCodtPens;
		
	}
	

	
	/*=====================================  Generar Codigo de Notas  ============================================*/
	public void InsertCodPens(String codPension,String codAlumno) throws Exception {
		String sql;
		
		sql=" INSERT INTO Pension(chrPensCodigo, chrAluCodigo, intPensMonto) "+
			" VALUES('"+codPension+"','"+codAlumno+"',3500) ";


		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		stm.executeUpdate(sql);
		
		stm.close();
		conn.close();	
	}

	
	
	
	public Pension obtenerPensionPK(String chrAlumCodigo) throws Exception {

		Pension objEntidad=null;

		String sql="";
		
		Connection conn=getConnection();
		
		Statement stm=conn.createStatement();
		
		
		sql=" select * from Pension "+
	    " where  chrAluCodigo='"+chrAlumCodigo+"'";		
		
		
		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Pension();
			
			objEntidad.setChrPensCodigo(rst.getString(1));
			objEntidad.setChrPensCodigo(rst.getString(2));
			objEntidad.setIntPensMonto(rst.getInt(3));
			

		}

		rst.close();
		stm.close();
		conn.close();
		
		return objEntidad;

		
	}
	
	
}
