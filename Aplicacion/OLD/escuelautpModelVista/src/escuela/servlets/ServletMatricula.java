package escuela.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;

import escuela.dao.*;
import escuela.bean.*;

public class ServletMatricula extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletMatricula() {
        super();

    }
    
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String strTipo=request.getParameter("tipo");

    	String strMatCodigo;
    	String strAluCodigo;
    	String strProCodigo;
    	int    intMatPrecio;
    	int    intMatCuotas;


    	Matricula    objEntidad=new Matricula();
    	MatriculaDAO objEntidadDAO=new MatriculaDAO();
    	
    	
    	ProductoDAO objEntiDAO = new ProductoDAO();
    	
        try{	
                if(strTipo.equals("insertar")){
                        
                        //Captura los parametros que llegan de la Web.
                	strMatCodigo=request.getParameter("txtMatCodigo");
                	strAluCodigo=request.getParameter("txtAluCodigo");
                	strProCodigo=request.getParameter("txtProCodigo");
                	intMatPrecio=Integer.parseInt(request.getParameter("txtMatPrecio"));
                	intMatCuotas=Integer.parseInt(request.getParameter("txtMatCuotas"));
                        
        
                        //Llena el Bean
                        objEntidad.setMatriCodigo(strMatCodigo);
                        objEntidad.setAlumnoCodigo(strAluCodigo);
                        objEntidad.setProducCodigo(strProCodigo);
                        objEntidad.setMatriPrecio(intMatPrecio);
                        objEntidad.setMatriCuotas(intMatCuotas);
        
                        //Inserta el Bean.
                        objEntidadDAO.insertar(objEntidad);
                        
                        //desimunir Vacantes
                        objEntiDAO.restaVacantes(strProCodigo);
                        
                        
                  } else if(strTipo.equals("actualizar")){
                        
                        //Captura los parametros que llegan de la Web.
                	strMatCodigo=request.getParameter("txtMatCodigo");
                	strAluCodigo=request.getParameter("txtAluCodigo");
                	strProCodigo=request.getParameter("txtProCodigo");
                	intMatPrecio=Integer.parseInt(request.getParameter("txtMatPrecio"));
                	intMatCuotas=Integer.parseInt(request.getParameter("txtMatCuotas"));
                        
        
                        //Llena el Bean
                        objEntidad.setMatriCodigo(strMatCodigo);
                        objEntidad.setAlumnoCodigo(strAluCodigo);
                        objEntidad.setProducCodigo(strProCodigo);
                        objEntidad.setMatriPrecio(intMatPrecio);
                        objEntidad.setMatriCuotas(intMatCuotas);
        
                        //Inserta el Bean.
                        objEntidadDAO.insertar(objEntidad);
                        
                } else{
                        //Captura los parametros que llegan de la Web.
                	strMatCodigo=request.getParameter("txtMatCodigo");
                        
                        
                        //---Elimina la entidad------------.
                        if(strMatCodigo!=null){
                        	strMatCodigo=strMatCodigo.trim();	
                        }
                        objEntidadDAO.eliminar(strMatCodigo);
                        //----------------------------------.
                }
                
                response.sendRedirect("MatriculaMsg.jsp");	
                
        } catch(Exception e){
                response.sendRedirect("MatriculaError.jsp");	
        }	
        
        }



}
