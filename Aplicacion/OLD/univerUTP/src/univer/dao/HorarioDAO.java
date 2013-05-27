package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;

public class HorarioDAO {

	public HorarioDAO() {
		super();
	}

	//Para obtener una conexion.
	private Connection getConnection(){
		
		DBConn cnx=new DBConn();	
		return cnx.getConnection();
	}
	
	
	/*=====================================  Listar Horario x Alumno ============================================*/
	public Lista obtenerHoraCursAlum(String chrAlumCodigo) throws Exception {
		
		Horario objEntidad=null;
		Lista objLista=new Lista(); 

		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		
		String sql="";

		
		sql=" select  hr.chrHoraCodigo, hr.chrHoraDiaUno, hr.vchHoraDiaUnoH, chrHoraDiaDos, vchHoraDiaDosH"+
			" from Curso as curs"+
			" inner join Alumno as alu"+
			" on curs.chrAlumCodigo = alu.chrAlumCodigo"+
			" join Horario as hr"+
			" on hr.chrHoraCodigo = curs.chrHoraCodigo"+
			" where alu.chrAlumCodigo='"+chrAlumCodigo+"'";
		

		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Horario();
			
			objEntidad.setChrHoraCodigo(rst.getString(1));
			objEntidad.setChrHoraDiaUno(rst.getString(2));
			objEntidad.setVchHoraDiaUnoH(rst.getString(3));
			objEntidad.setChrHoraDiaDos(rst.getString(4));
			objEntidad.setVchHoraDiaDosH(rst.getString(5));
			
			objLista.setElemento(objEntidad);				
		}

		rst.close();
		stm.close();
		conn.close();
		
		return objLista;
	}	

	
	
}
