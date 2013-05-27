package univer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import univer.bean.Curso;
import univer.bean.Matricula;
import univer.util.DBConn;
import univer.util.Lista;


public class MatriculaDAO {
	

	//Para obtener una conexion.
	private Connection getConnection(){
		
		DBConn cnx=new DBConn();	
		return cnx.getConnection();
	}


	public Lista obtenerMatricula() throws Exception {

		Matricula objEntidad=null;

		Lista objLista=new Lista(); 

		String sql="";
		
		Connection conn=getConnection();
		
		Statement stm=conn.createStatement();
		
		sql="SELECT * FROM Matricula";
		
		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Matricula();
			
			objEntidad.setMatriCodigo(rst.getString(1));
			objEntidad.setAlumnoCodigo(rst.getString(2));
			objEntidad.setCursoCodigo(rst.getString(3));
			objEntidad.setAlumCodNota(rst.getString(4));
			objEntidad.setAlumCodAsist(rst.getString(5));
			
			objLista.setElemento(objEntidad);				
		}

		rst.close();
		stm.close();
		conn.close();
		
		return objLista;
		
	}


	public Matricula obtenerMatriculaPK(String strCodigo) throws Exception {

		Matricula objEntidad=null;

		String sql="";
		
		Connection conn=getConnection();
		
		Statement stm=conn.createStatement();
		
		sql="SELECT * FROM Matricula WHERE chrMatCodigo='"+strCodigo+"'";
		
		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			objEntidad=new Matricula();
			
			objEntidad.setMatriCodigo(rst.getString(1));
			objEntidad.setAlumnoCodigo(rst.getString(2));
			objEntidad.setCursoCodigo(rst.getString(3));
			objEntidad.setAlumCodNota(rst.getString(4));
			objEntidad.setAlumCodAsist(rst.getString(5));
			
		}

		rst.close();
		stm.close();
		conn.close();
		
		return objEntidad;

		
	}
	
	public void insertar(Matricula entidad) throws Exception {
		String sql;
		
		sql="INSERT INTO Matricula(chrMatCodigo,chrAluCodigo,chrCursCodigo,chrNotaCodigo,chrAsistCodigo) "
			+"values('"+entidad.getMatriCodigo()+"','"+entidad.getAlumnoCodigo()+"','"+entidad.getCursoCodigo()+"','"+entidad.getAlumCodNota()+"','"+entidad.getAlumCodAsist()+"')";
		
		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		stm.executeUpdate(sql);
		
		stm.close();
		conn.close();	
	}
	
	public void eliminar(String strCodigo) throws Exception {
		
		String sql;
		
		sql="DELETE FROM Matricula WHERE chrMatCodigo='"+strCodigo+"'";
		
		Connection conn=getConnection();
		Statement stm=conn.createStatement();
		stm.executeUpdate(sql);
		
		stm.close();
		conn.close();
	}
	

	public String[] GenCodMatriNotAsi() throws Exception {

		int num=1;
		String[] genCod={"","",""};

		String sql="";
		
		Connection conn=getConnection();
		
		Statement stm=conn.createStatement();
		
		sql="SELECT * FROM Matricula";
		
		ResultSet rst=stm.executeQuery(sql);

		while(rst.next()){
			
			//contador para saber la cantidad de Matriculas
			
			num = num + 1;
			
		}
		
			genCod[0] ="MT"+(10000+num);
			genCod[1] ="CN"+(100+num);
			genCod[2] ="CA"+(100+num);
			
	
		rst.close();
		stm.close();
		conn.close();
		
		return genCod;
		
	}	
	
	/*-------------------------------- Falta implementar+ ----------------------*/


}
