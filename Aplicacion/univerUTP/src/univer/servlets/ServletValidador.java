package univer.servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

import univer.bean.*;
import univer.dao.AdministradorDAO;
import univer.dao.AlumnoDAO;


public class ServletValidador extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=windows-1252";

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            try{    
                    AdministradorDAO objAdmDAO= new AdministradorDAO();
                    Administrador    objAdm;
                    
                    
                    AlumnoDAO objAlumDAO= new AlumnoDAO();
                    Alumno    objAlum;

                    HttpSession session=request.getSession();

                    String strLogin;
                    String strPassword;

                    strLogin=request.getParameter("txtLogin");
                    strPassword=request.getParameter("txtPassword");

                    objAdm=objAdmDAO.validarLogin(strLogin,strPassword);
                    objAlum=objAlumDAO.validarAlum(strLogin,strPassword);

                    
                    if(objAlum!=null){
                    	

                    	session.setAttribute("strAlumNombre",objAlum.getNombres()+" "+objAlum.getApellidos());
                    	session.setAttribute("strAlumCodigo",objAlum.getCodigo());
                    	response.sendRedirect("PrincipalAlum.jsp");          

                    	
                    } else if(objAdm!=null){
                    		
                        session.setAttribute("strAdmNombre",objAdm.getNombres()+" "+objAdm.getApellidos());
                        session.setAttribute("strAdmCodigo",objAdm.getCodigo());
                        response.sendRedirect("Principal.jsp");
                        
                    	
                    }else{
                            PrintWriter out=response.getWriter();
                            out.println("<B>Error al Ingresar, verifique</B>");                     
                    }
                    
            }
            catch(Exception e){
                    System.out.println("ESCUELA; "+e);      
            }
    }
    }