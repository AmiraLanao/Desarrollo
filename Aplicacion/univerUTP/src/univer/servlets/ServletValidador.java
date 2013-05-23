package univer.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import univer.bean.Alumno;
import univer.dao.AlumnoDAO;

public class ServletValidador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{    
            AlumnoDAO objAluDAO= new AlumnoDAO();
            Alumno    objAlu;

            HttpSession session=request.getSession();

            String strLogin;
            String strPassword;

            strLogin=request.getParameter("txtLogin");
            strPassword=request.getParameter("txtPassword");

            objAlu=objAluDAO.validarLogin(strLogin,strPassword);

            if(objAlu!=null){
                    session.setAttribute("strAlumNombre",objAlu.getVchAlumNombres()+" "+objAlu.getVchAlumApellidos());
                    session.setAttribute("strAlumCodigo",objAlu.getChrAlumCodigo());
                    session.setAttribute("strAlumFacu", objAlu.getVchAlumFaculta());
                    response.sendRedirect("Principal.jsp");
            }

            else{
                    PrintWriter out=response.getWriter();
                    out.println("<B>Error al Ingresar, verifique</B>");                     
            }
            
    }
    catch(Exception e){
            System.out.println("UniverUTP; "+e);      
    }
        
        
	}

}
