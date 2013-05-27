<%@page import="escuela.dao.*" %>
<%@page import="escuela.bean.*" %>

<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>


<%
String strCodigoA=request.getParameter("salumno");
String strCodigoP=request.getParameter("sproducto");
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
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Matricula</td>
              <td width="62%"><input type="text" name="txtMatCodigo" size="20" ></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Alumno</td>
              <td width="62%"><input type="text" name="txtAluCodigo" size="20" value="<%=strCodigoA%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo Producto</td>
              <td width="62%"><input type="text" name="txtProCodigo" size="20" value="<%=strCodigoP%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Precio</td>
              <td width="62%"><input type="text" name="txtMatPrecio" size="20" ></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Cuotas</td>
              <td width="62%"><input type="text" name="txtMatCuotas" size="20" ></td>
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

