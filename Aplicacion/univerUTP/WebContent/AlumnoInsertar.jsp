
<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>
<%
	//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.AlumnoDAO" id="ALUMNODAO" scope="session"/>

<%
String GenCodAlum=ALUMNODAO.GenerarCodAlum();
%>

<html>

<head>
<title>Ingresar Nuevo Registro</title>
</head>

<body>

<table border="0" width="100%" height="550" cellspacing="0" cellpadding="0">
  <tr>
    <td width="19%" height="544" valign="top">    
    
    <table border="1" width="97%" cellspacing="0" bordercolor="#800000">
      <tr>
        <td width="100%">
        
        <!--Archivo para el menu -->
        <jsp:include page="menu.htm" flush="true"/>
        
        </td>
      </tr>
    </table>
    
    </td>
    <td width="81%" height="544" valign="top"><font face="Arial"><b>&nbsp;&nbsp;&nbsp;
      </b></font>
      <p align="center"><font size="3"><b>Insertar Alumno</b></font></p>
      <form method="POST" action="alumnoMan">
        <div align="center">
          <center>
          <table border="0" width="46%" cellpadding="0">
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo</td>
              <td width="62%"><input type="text" name="txtCodigo" size="20"  value="<%=GenCodAlum%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Nombres</td>
              <td width="62%"><input type="text" name="txtNombres" size="20" ></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Apellidos</td>
              <td width="62%"><input type="text" name="txtApellidos" size="20" ></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Fecha de Nacimiento</td>
              <td width="62%"><input type="text" name="txtFechaNac" size="20" ></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Sexo</td>
              <td>
              <input type="radio" value="M" name="optSexo" checked >M 
              <input type="radio" value="F" name="optSexo" >F</td>
            </tr>
          </table>
          </center>
        </div>
        <p align="center"><input type="reset" value="&lt;&lt;&lt;Regresar" name="btnRegresar" onClick="history.back();">
        <input type="submit" value="    Guardar    " name="btnGuardar" onClick="history.back();"></p>
	<input type="hidden" value="insertar" name="tipo">
      </form>
      <p>&nbsp;
      <p>&nbsp;
      <p>&nbsp;
      <p>&nbsp;
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
