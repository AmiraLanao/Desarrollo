package univer.dao;

import java.sql.*;

import univer.bean.*;
import univer.util.*;

public class NotaDAO {

	public NotaDAO() {
		super();
	}

	//Para obtener una conexion.
	private Connection getConnection(){
		
		DBConn cnx=new DBConn();	
		return cnx.getConnection();
	}
	
	/*=====================================  Generar Codigo de Notas  ============================================*/
	public void geneCodNota(String codNota) throws Exception {
		String sql;
		
		
		sql=" INSERT INTO Nota(chrNotaCodigo, intNotaPract1, intNotaPract2, intNotaPract3, intNotaPract4, "+
			" intNotaPract5, intNotaExaPa,intNotaExaFi) "+
			" VALUES('"+codNota+"',0,0,0,0,0,0,0) ";


		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		stm.executeUpdate(sql);
		
		stm.close();
		conn.close();	
	}
	
	/*=====================================  Listar Nota x Alumno ============================================*/
	public Lista obtenerNotaCursAlum(String chrAlumCodigo) throws Exception {
		
		Nota objEntidad=null;
		Lista objLista=new Lista(); 

		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		
		String sql="";
	
		sql=" select   nt.chrNotaCodigo,nt.intNotaPract1, nt.intNotaPract2, nt.intNotaPract3, "+
				" nt.intNotaPract4, nt.intNotaPract5, nt.intNotaExaPa, nt.intNotaExaFi "+
				" from Matricula as matri "+
				" inner join Nota as nt "+
				" on nt.chrNotaCodigo = matri.chrNotaCodigo "+		  
				" where matri.chrAluCodigo='"+chrAlumCodigo+"' ";
		

		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Nota();
			
			objEntidad.setChrNotaCodigo(rst.getString(1));
			objEntidad.setIntNotaPract1(rst.getInt(2));
			objEntidad.setIntNotaPract2(rst.getInt(3));
			objEntidad.setIntNotaPract3(rst.getInt(4));
			objEntidad.setIntNotaPract4(rst.getInt(5));
			objEntidad.setIntNotaPract5(rst.getInt(6));
			objEntidad.setIntNotaExaPa(rst.getInt(7));
			objEntidad.setIntNotaExaFi(rst.getInt(8));
			
						
			objLista.setElemento(objEntidad);				
		}

		rst.close();
		stm.close();
		conn.close();
		
		return objLista;
	}	
	
	

	
}
