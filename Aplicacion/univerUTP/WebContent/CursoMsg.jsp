<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
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
      <p align="center"><font size="3"><b>Curso&nbsp;</b></font></p>
      <form method="POST" action="cursoMan">
        <p align="center"><font color="#0000FF">El proceso fue existoso</font></p>

        <p align="center">
	<A HREF="CursoMain.jsp">Continuar...</A>
        </p>

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
