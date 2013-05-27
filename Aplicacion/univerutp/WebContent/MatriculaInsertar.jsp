<%@page import="univer.dao.*" %>
<%@page import="univer.bean.*" %>

<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.MatriculaDAO" id="MATRICULADAO" scope="session"/>

<%
String strCodigoA=request.getParameter("salumno");
String strCodigoC=request.getParameter("scurso");
String[] strCodMatNotAsi=MATRICULADAO.GenCodMatriNotAsi();
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
      <p align="center"><font size="3"><b>Registrar Matricula</b></font></p>
      <form method="POST" action="matriculaMan">
        <div align="center">
          <center>
          <table border="0" width="46%" cellpadding="0">
            <tr>
              <td width="30" bgcolor="#f8a5a5">&nbsp;Codigo Matricula</td>
              <td width="62%"><input type="text" name="txtMatCodigo"  size="20" value="<%=strCodMatNotAsi[0]%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Alumno</td>
              <td width="62%"><input type="text" name="txtAluCodigo" size="20" value="<%=strCodigoA%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Curso</td>
              <td width="62%"><input type="text" name="txtCursoCodigo" size="20" value="<%=strCodigoC%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Notas</td>
              <td width="62%"><input type="text" name="txtAlumCodNota" size="20" value="<%=strCodMatNotAsi[1]%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Asistencia</td>
              <td width="62%"><input type="text" name="txtAlumCodAsist" size="20" value="<%=strCodMatNotAsi[2]%>"></td>
            </tr>
            
            
          </table>
          </center>
        </div>
        <p align="center"><input type="reset" value="&lt;&lt;&lt;Regresar" name="btnRegresar" onClick="history.back();">
        <input type="submit" value="    Guardar    " name="btnGuardar"></p>
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

