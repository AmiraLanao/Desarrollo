package escuela.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import escuela.bean.Matricula;
import escuela.bean.Producto;
import escuela.util.DBConn;
import escuela.util.Lista;

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
			objEntidad.setProducCodigo(rst.getString(3));
			objEntidad.setMatriPrecio(rst.getInt(4));
			objEntidad.setMatriCuotas(rst.getInt(5));
			
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
			objEntidad.setProducCodigo(rst.getString(3));
			objEntidad.setMatriPrecio(rst.getInt(4));
			objEntidad.setMatriCuotas(rst.getInt(5));

		}

		rst.close();
		stm.close();
		conn.close();
		
		return objEntidad;

		
	}
	
	public void insertar(Matricula entidad) throws Exception {
		String sql;
		
		sql="INSERT INTO Matricula(chrMatCodigo,chrAluCodigo,chrProCodigo,intMatPrecio,intMatCuotas) "
			+"values('"+entidad.getMatriCodigo()+"','"+entidad.getAlumnoCodigo()+"','"+entidad.getProducCodigo()+"',"+entidad.getMatriPrecio()+","+entidad.getMatriCuotas()+")";
		
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
	

	
	
	/*-------------------------------- Falta implementar+ ----------------------*/


}
