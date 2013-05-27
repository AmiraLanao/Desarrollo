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
	
	
	
	public Pension obtenerPensionPK(String chrAlumCodigo) throws Exception {

		Pension objEntidad=null;

		String sql="";
		
		Connection conn=getConnection();
		
		Statement stm=conn.createStatement();
		
		sql=" select ps.chrPensCodigo, ps.intPensMonto "+
			" from Pension as ps "+
			" inner join Alumno as alu "+
			" on ps.chrPensCodigo=alu.chrPensCodigo "+
			" where alu.chrAlumCodigo='"+chrAlumCodigo+"'";
				
		
		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Pension();
			
			objEntidad.setChrPensCodigo(rst.getString(1));
			objEntidad.setIntPensMonto(rst.getInt(2));
			

		}

		rst.close();
		stm.close();
		conn.close();
		
		return objEntidad;

		
	}
	
	
}
