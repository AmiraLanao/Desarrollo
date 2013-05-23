package escuela.dao;

import escuela.util.*;
import escuela.bean.*;

import java.sql.*;

public class ProductoDAO {

private Connection getConnection(){
	
	DBConn cnx=new DBConn();	
	return cnx.getConnection();
}


public Lista obtenerProducto() throws Exception {

	Producto objEntidad=null;

	Lista objLista=new Lista(); 

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Producto";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Producto();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setVacante(rst.getInt(3));
				
		objLista.setElemento(objEntidad);				
	}

	rst.close();
	stm.close();
	conn.close();
	
	return objLista;
	
}


public Producto obtenerProductoPK(String strCodigo) throws Exception {

	Producto objEntidad=null;

	String sql="";
	
	Connection conn=getConnection();
	
	Statement stm=conn.createStatement();
	
	sql="SELECT * FROM Producto WHERE chrProCodigo='"+strCodigo+"'";
	
	ResultSet rst=stm.executeQuery(sql);

	while(rst.next()){
		
		objEntidad=new Producto();
		
		objEntidad.setCodigo(rst.getString(1));
		objEntidad.setNombres(rst.getString(2));
		objEntidad.setVacante(rst.getInt(3));

	}

	rst.close();
	stm.close();
	conn.close();
	
	return objEntidad;

	
}

public void actualizar(Producto entidad) throws Exception {
	
	String sql;
	
	sql="UPDATE Producto set vchProNombre='"+entidad.getNombres()+"', vchProVacante="+entidad.getVacante()+" WHERE chrProCodigo='"+entidad.getCodigo()+"'";

	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();			   					
}


public void eliminar(String strCodigo) throws Exception {
	
	String sql;
	
	sql="DELETE FROM Producto WHERE chrProCodigo='"+strCodigo+"'";
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();
}



public void insertar(Producto entidad) throws Exception {
	String sql;
	
	sql="INSERT INTO Producto(chrProCodigo,vchProNombre,vchProVacante) "
	    +"values('"+entidad.getCodigo()+"','"+entidad.getNombres()+"',"+entidad.getVacante()+")";
	
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();	
}


/*=======================================  Resta la cantidad de Vacantes ==========================================================*/

public void restaVacantes(String strCodigo) throws Exception {
	
	ProductoDAO objEntidadDAO =new ProductoDAO();
	Producto objEntidadP = new Producto();
	
	objEntidadP = objEntidadDAO.obtenerProductoPK(strCodigo);
	
	int vacante = 0;
			
	if(objEntidadP.getVacante()>0){
		
		vacante = objEntidadP.getVacante()-1;
	
	String sql;
	
	sql="UPDATE Producto set vchProVacante="+vacante+" WHERE chrProCodigo='"+objEntidadP.getCodigo()+"'";
	
	
	
	Connection conn=getConnection();
	Statement stm=conn.createStatement();
	stm.executeUpdate(sql);
	
	stm.close();
	conn.close();
	
	};
	
	
}
/*=======================================  Resta la cantidad de Vacantes ==========================================================*/


}