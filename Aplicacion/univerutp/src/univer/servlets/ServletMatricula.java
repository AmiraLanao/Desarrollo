package univer.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import univer.bean.*;
import univer.dao.*;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;


public class ServletMatricula extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletMatricula() {
        super();

    }
    
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String strTipo=request.getParameter("tipo");

    	String strMatCodigo;
    	String strAluCodigo;
    	String strCursoCodigo;
    	String strAlumCodNota;
    	String strAlumCodAsist;


    	Matricula    objEntidad=new Matricula();
    	MatriculaDAO objEntidadDAO=new MatriculaDAO();
    	
    	
    	CursoDAO objEntiDAO = new CursoDAO();
    	
        try{	
                if(strTipo.equals("insertar")){
                        
                        //Captura los parametros que llegan de la Web.
                	strMatCodigo=request.getParameter("txtMatCodigo");
                	strAluCodigo=request.getParameter("txtAluCodigo");
                	strCursoCodigo=request.getParameter("txtCursoCodigo");
                	strAlumCodNota=request.getParameter("txtAlumCodNota");
                	strAlumCodAsist=request.getParameter("txtAlumCodAsist");
                        
        
                    //Llena el Bean
                     objEntidad.setMatriCodigo(strMatCodigo);
                     objEntidad.setAlumnoCodigo(strAluCodigo);
                     objEntidad.setCursoCodigo(strCursoCodigo);
                     objEntidad.setAlumCodNota(strAlumCodNota);
                     objEntidad.setAlumCodAsist(strAlumCodAsist);

        
                        //Inserta el Bean.
                        objEntidadDAO.insertar(objEntidad);
                        
                        //desimunir Vacantes
                        objEntiDAO.restaVacantes(strCursoCodigo);
                        
                        
                  } else if(strTipo.equals("actualizar")){
                        
                        //Captura los parametros que llegan de la Web.
                  	strMatCodigo=request.getParameter("txtMatCodigo");
                  	strAluCodigo=request.getParameter("txtAluCodigo");
                  	strCursoCodigo=request.getParameter("txtCursoCodigo");
                  	strAlumCodNota=request.getParameter("txtAlumCodNota");
                  	strAlumCodAsist=request.getParameter("txtAlumCodAsist");
                        
        
                        //Llena el Bean
                        objEntidad.setMatriCodigo(strMatCodigo);
                        objEntidad.setAlumnoCodigo(strAluCodigo);
                        objEntidad.setCursoCodigo(strCursoCodigo);
                        objEntidad.setAlumCodNota(strAlumCodNota);
                        objEntidad.setAlumCodAsist(strAlumCodAsist);
        
                        //Inserta el Bean.
                        //objEntidadDAO.actualizar(objEntidad);
                        
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
