package univer.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import univer.bean.*;
import univer.dao.*;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;



public class ServletCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String strTipo=request.getParameter("tipo");

	String strCodigo;
	String strNombres;
	
	//Datos de Insert
	int intSelecVacantes;
	int intSelecCreditos;
	String strSelecHorario;
	
	//Datos de Actualizar
	int intVacante;
	int intCredito;
	String strHorario;
	
	

	Curso    objEntidad=new Curso();
	CursoDAO objEntidadDAO=new CursoDAO();

    try{	
            if(strTipo.equals("insertar")){
                    
                    //Captura los parametros que llegan de la Web.
                    strCodigo=request.getParameter("txtCodigo");
                    strNombres=request.getParameter("txtNombre");
                    intSelecVacantes=Integer.parseInt(request.getParameter("SelecVacantes"));
                    intSelecCreditos=Integer.parseInt(request.getParameter("SelecCreditos"));
                    strSelecHorario=request.getParameter("selectHora");
                    
    
                    //Llena el Bean
                    objEntidad.setCodigo(strCodigo);
                    objEntidad.setNombres(strNombres);
                    objEntidad.setVacante(intSelecVacantes);
                    objEntidad.setCredito(intSelecCreditos);
                    objEntidad.setHorario(strSelecHorario);
    
                    //Inserta el Bean.
                    objEntidadDAO.insertar(objEntidad);     
                    
                    
            } else if(strTipo.equals("actualizar")){
            	
                //Captura los parametros que llegan de la Web.
                strCodigo=request.getParameter("txtCodigo");
                strNombres=request.getParameter("txtNombre");
                intVacante=Integer.parseInt(request.getParameter("txtVacante"));
                intCredito=Integer.parseInt(request.getParameter("txtCredito"));
                strHorario=request.getParameter("txtHorario");

                //Llena el Bean
                objEntidad.setCodigo(strCodigo);
                objEntidad.setNombres(strNombres);
                objEntidad.setVacante(intVacante);
                objEntidad.setCredito(intCredito);
                objEntidad.setHorario(strHorario);

                //Actualiza el Bean.
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
            
            response.sendRedirect("CursoMsg.jsp");	
            
    } catch(Exception e){
            response.sendRedirect("CursoError.jsp");	
    }	
    
    }

}