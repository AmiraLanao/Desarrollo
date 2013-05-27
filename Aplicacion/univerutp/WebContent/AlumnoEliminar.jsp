<%@page import="univer.dao.*" %>
<%@page import="univer.bean.*" %>

<jsp:useBean class="univer.dao.AlumnoDAO" id="ALUMNODAO"/>

<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<%
String strCodigo=request.getParameter("codigo");

//Cargo los datos del alumno.
Alumno objAlumno=ALUMNODAO.obtenerAlumnoPK(strCodigo);
%>

<html>

<head>
<title>Bienvenido</title>
</head>

<body>

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
      <p align="center"><font size="3"><b>Eliminar Alumno</b></font></p>
      <form method="POST" action="alumnoMan">
        <div align="center">
          <center>

          <table border="0" width="46%" cellpadding="0">
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo</td>
              <td width="62%"><input type="text" name="txtCodigo" size="20" value="<%=objAlumno.getCodigo()%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Nombres</td>
              <td width="62%"><input type="text" name="txtNombres" size="20" value="<%=objAlumno.getNombres()%>" disabled="true"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Apellidos</td>
              <td width="62%"><input type="text" name="txtApellidos" size="20" value="<%=objAlumno.getApellidos()%>" disabled="true"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Fecha de Nacimiento</td>
              <td width="62%"><input type="text" name="txtFechaNac" size="20" value="<%=objAlumno.getFechaNac()%>" disabled="true"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Sexo</td>
              <td>
              <input type="radio" value="m" name="optSexo" <%if(objAlumno.getSexo().equals("M")){%>checked <%}%> disabled="true">M 
              <input type="radio" value="f" name="optSexo" <%if(objAlumno.getSexo().equals("F")){%>checked <%}%> disabled="true">F</td>
            </tr>
          </table>
         
          </center>
        </div>
        <p align="center"><input type="reset" value="&lt;&lt;&lt;Regresar" name="btnRegresar" onClick="history.back();">
        <input type="submit" value="    Eliminar     " name="btnEliminar"></p>

	<input type="hidden" value="eliminar" name="tipo">

      </form>

      <p>&nbsp;
      <p>&nbsp;
      <p>
      
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          
        </tr>
      </table>
      
    </td>
  </tr>
</table>

</body>

</html>
