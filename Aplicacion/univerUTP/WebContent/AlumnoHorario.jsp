<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>
<%
	//Para verificar la sesion.
if(session.getAttribute("strAlumCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.CursoDAO" id="CURSODAO" scope="session"/>

<%
String strAlumCod=String.valueOf(session.getAttribute("strAlumCodigo"));

Lista objListCurso=CURSODAO.obtenerCursAlum(strAlumCod);

%>

<html>
<head>
<title>Sitema de Intranet de Alumnos</title>
</head>

<body bgcolor="White">
    
<table border="0" width="100%" height="550" cellspacing="0" cellpadding="0">
  <tr>
    <td width="17%" height="544" valign="top">
    
    <table border="1" width="97%" cellspacing="0" bordercolor="#800000">
      <tr>
        <td width="100%">
        
        <!--Archivo para el menu -->
        <jsp:include page="menuAlum.htm" flush="true"/>
        
        </td>
      </tr>
    </table>
    
    </td>
    <td width="83%" height="544" valign="top"><font face="Arial"><b>&nbsp;&nbsp;&nbsp;
      </b></font>
      <p align="center"><font size="3"><b>Lista Notas del Alumno</b></font></p>
      <div align="center">
        <center>
        <table border="1" width="86%" height="74">
          <tr>
            <td width="36" bgcolor="#f8a5a5" align="center" height="19"><b>Curso</b></td>
			<td width="20%" bgcolor="#f8a5a5" align="center" height="19"><b>Dia y Horarios</b></td>
          </tr>
		<%for(int i=0;i<objListCurso.getTamanio();i++){%>          
          <tr>
          	
            <td width="19%" height="18"><%=((Curso)objListCurso.getElemento(i)).getNombres()%></td>
            
            <td width="10%" height="18"><%=((Curso)objListCurso.getElemento(i)).getHorario()%></td>

          </tr>
		<%}%>        
		  
        </table>
        </center>
      </div>
      <p>&nbsp;
      <p>
     

      <p>
      <p>&nbsp;
      <p>&nbsp;
      


    </td>
  </tr>
</table>



</body>

</html>
