<%@page import="univer.dao.*" %>
<%@page import="univer.bean.*" %>
<%
try{
%>

<jsp:useBean class="univer.dao.CursoDAO" id="CURSODAO"/>

<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<%
	String strCodigo=request.getParameter("codigo");

//Cargo los datos del Producto.
Curso objCurso=CURSODAO.obtenerCursoPK(strCodigo);
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
      <p align="center"><font size="3"><b>Actualizar Curso</b></font></p>
      <form method="POST" action="cursoMan">
        <div align="center">
          <center>

          <table border="0" width="46%" cellpadding="0">
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo</td>
              <td width="62%"><input type="text" name="txtCodigo" size="20" value="<%=objCurso.getCodigo()%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Nombre</td>
              <td width="62%"><input type="text" name="txtNombre" size="20" value="<%=objCurso.getNombres()%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Num. Vacante</td>
              <td width="62%"><input type="text" name="txtVacante" size="20" value="<%=objCurso.getVacante()%>"></td>
            </tr>
           <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Num. Creditos</td>
              <td width="62%"><input type="text" name="txtCredito" size="20" value="<%=objCurso.getCredito()%>"></td>
            </tr>
            
           <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Horario</td>
              <td width="62%"><input type="text" name="txtHorario" size="60" value="<%=objCurso.getHorario()%>"></td>
            </tr>
            
          </table>
         
          </center>
        </div>
        <p align="center"><input type="reset" value="&lt;&lt;&lt;Regresar" name="btnRegresar" onClick="history.back();">

        <input type="submit" value="    Guardar     " name="btnGuardar"></p>

	<input type="hidden" value="actualizar" name="tipo">
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

<%
}
catch(Exception e){
	System.out.println("; Error:"+e);
}
%>
