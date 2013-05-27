package escuela.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;

import escuela.dao.*;
import escuela.bean.*;


public class ServletProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String strTipo=request.getParameter("tipo");

	String strCodigo;
	String strNombres;
	int    intVacante;

	Producto    objEntidad=new Producto();
	ProductoDAO objEntidadDAO=new ProductoDAO();

    try{	
            if(strTipo.equals("insertar")){
                    
                    //Captura los parametros que llegan de la Web.
                    strCodigo=request.getParameter("txtCodigo");
                    strNombres=request.getParameter("txtNombre");
                    intVacante=Integer.parseInt(request.getParameter("txtVacante"));
    
                    //Llena el Bean
                    objEntidad.setCodigo(strCodigo);
                    objEntidad.setNombres(strNombres);
                    objEntidad.setVacante(intVacante);
    
                    //Inserta el Bean.
                    objEntidadDAO.insertar(objEntidad);
                    
            } else if(strTipo.equals("actualizar")){
            	
                //Captura los parametros que llegan de la Web.
                strCodigo=request.getParameter("txtCodigo");
                strNombres=request.getParameter("txtNombre");
                intVacante=Integer.parseInt(request.getParameter("txtVacante"));

                //Llena el Bean
                objEntidad.setCodigo(strCodigo);
                objEntidad.setNombres(strNombres);
                objEntidad.setVacante(intVacante);

                //Inserta el Bean.
                    objEntidadDAO.actualizar(objEntidad);
            } else{
                    //Captura los parametros que llegan de la Web.
                    strCodigo=request.getParameter("txtCodigo");
                    
                    
                    //---Elimina la entidad------------.
                    if(strCodigo!=null){
                            strCodigo=strCodigo.trim();	
                    }
                    objEntidadDAO.eliminar(strCodigo);
                    //----------------------------------.
            }
            
            response.sendRedirect("ProductoMsg.jsp");	
            
    } catch(Exception e){
            response.sendRedirect("ProductoError.jsp");	
    }	
    
    }

}