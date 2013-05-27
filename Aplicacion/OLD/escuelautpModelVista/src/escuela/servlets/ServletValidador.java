package escuela.servlets;

import escuela.dao.AdministradorDAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

import escuela.bean.*;

public class ServletValidador extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=windows-1252";

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            try{    
                    AdministradorDAO objAdmDAO= new AdministradorDAO();
                    Administrador    objAdm;

                    HttpSession session=request.getSession();

                    String strLogin;
                    String strPassword;

                    strLogin=request.getParameter("txtLogin");
                    strPassword=request.getParameter("txtPassword");

                    objAdm=objAdmDAO.validarLogin(strLogin,strPassword);

                    if(objAdm!=null){
                            session.setAttribute("strAdmNombre",objAdm.getNombres()+" "+objAdm.getApellidos());
                            session.setAttribute("strAdmCodigo",objAdm.getCodigo());
                            response.sendRedirect("Home.jsp");
                    }
                    else{
                            PrintWriter out=response.getWriter();
                            out.println("<B>Error al Ingresar, verifique</B>");                     
                    }
                    
            }
            catch(Exception e){
                    System.out.println("ESCUELA; "+e);      
            }
    }
    }