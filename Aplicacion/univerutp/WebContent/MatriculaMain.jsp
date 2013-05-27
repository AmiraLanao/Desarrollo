<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>

<%
	//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.CursoDAO" id="CURSODAO" scope="session"/>
<jsp:useBean class="univer.dao.AlumnoDAO" id="ALUMNODAO" scope="session"/>

<%
Lista objListaP=CURSODAO.obtenerCurso();
Lista objListaA=ALUMNODAO.obtenerAlumnos();
%>

<html>
<head>
<title>Matricula - Administrador</title>
</head>

<body bgcolor="White">

<table border="0" width="100%" height="550" cellspacing="0" cellpadding="0">
  <tr>
    <td width="17%" height="544" valign="top">
    
    <table border="1" width="97%" cellspacing="0" bordercolor="#800000">
      <tr>
        <td width="100%">
        
        <!--Archivo para el menu -->
        <jsp:include page="menu.htm" flush="true"/>
        
        </td>
      </tr>
    </table>
    </td>
    <td width="83%" height="544" valign="top"><font face="Arial"><b>&nbsp;&nbsp;&nbsp;
      </b></font>
      <p align="center"><font size="3"><b>Matricula de Alumno - Fase 01</b></font></p>
      <form method="POST" action="MatriculaInsertar.jsp">
      <div align="center">
        <center>
        
       <table border="1" width="86%" height="74">
          <tr>
            <td width="19%" bgcolor="#f8a5a5" align="center" height="19"><b>Codigo</b></td>
            <td width="36%" bgcolor="#f8a5a5" align="center" height="19"><b>Nombres y Apellidos</b></td>
            <td width="24%" bgcolor="#f8a5a5" align="center" height="19"><b>Fecha de Nacimiento</b></td>
            <td width="9%" bgcolor="#f8a5a5" align="center" height="19"><b>Seleccion</b></td>
          </tr>
		<%for(int i=0;i<objListaA.getTamanio();i++){%>          
          <tr>
            <td width="19%" height="18"><%=((Alumno)objListaA.getElemento(i)).getCodigo()%></td>
            <td width="36%" height="18"><%=((Alumno)objListaA.getElemento(i)).getNombres()+" "+((Alumno)objListaA.getElemento(i)).getApellidos() %></td>
            <td width="24%" height="18"><%=((Alumno)objListaA.getElemento(i)).getFechaNac()%></td>
			<td width="9%" height="18" align="center">
			<input type="radio" value="<%=((Alumno)objListaA.getElemento(i)).getCodigo()%>" name="salumno" <%if(3==i) {%>checked <%}%>>
            <%--<input type="checkbox" value="<%=((Alumno)objListaA.getElemento(i)).getCodigo()%>" name="sproducto"></td>--%>
          </tr>
		<%}%>        
        </table>
        
        <br>
        <br>
        <br>

	   <table border="1" width="86%" height="74">
          <tr>
            <td width="19%" bgcolor="#f8a5a5" align="center" height="19"><b>Codigo</b></td>
            <td width="36%" bgcolor="#f8a5a5" align="center" height="19"><b>Producto</b></td>
            <td width="24%" bgcolor="#f8a5a5" align="center" height="19"><b># Vacamtes</b></td>
            <td width="9%" bgcolor="#f8a5a5" align="center" height="19"><b>Seleccion</b></td>
          </tr>
		<%for(int i=0;i<objListaP.getTamanio();i++){%>          
          <tr>
            <td width="19%" height="18"><%=((Curso)objListaP.getElemento(i)).getCodigo()%></td>
            <td width="36%" height="18"><%=((Curso)objListaP.getElemento(i)).getNombres()%></td>
            <td width="24%" height="18"><%=((Curso)objListaP.getElemento(i)).getVacante()%></td>
            <td width="9%" height="18" align="center">
            <%--<input type="checkbox" name="salumno">--%>
            	<%--<input type="hidden" name="prod"  value=" value="<%=((Producto)objListaP.getElemento(i)).getCodigo()%>"></input>--%>
            	<input type="radio" value="<%=((Curso)objListaP.getElemento(i)).getCodigo()%>" name="scurso" <%if(1==i) {%>checked <%}%>> 
                <%--<input type="radio" value="F" name="prod" >F</td>--%>
            </td>
          </tr>
		<%}%>        
        </table>
        
      </div>
      <p>&nbsp;
      <p>
      
      <div align="center">
       <center>
      
        <table border="1" width="86%">
          <tr>
             <input type="submit" value="    Siguiente    " name="btnMatricula">
            
          </tr>
        </table>

          </center>
      </div>
	</form>
      <p>
      <p>&nbsp;
      <p>&nbsp;
      
      
       <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
        </tr>
      </table>
      

    </td>
  </tr>
</table>



</body>

</html>