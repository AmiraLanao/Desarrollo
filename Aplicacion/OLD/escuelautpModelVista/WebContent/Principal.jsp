<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>

<html>

<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}

String strAdministrador=String.valueOf(session.getAttribute("strAdmNombre"));
%>

<head>
<title>Bienvenidoa la Intranet de la Escuela - CJAVA</title>
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 238px;
	top: 25px;
	width: 456px;
	height: 50px;
	z-index: 1;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body>

<div id="apDiv1">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a class="MenuBarItemSubmenu" href="#">Alumnos</a>
      <ul>
        <li><a href="AlumnoMain.jsp">Listar Alumnos</a></li>
</ul>
    </li>
    <li><a href="#">Productos</a></li>
    <li><a class="MenuBarItemSubmenu" href="MatriculaConsulta.jsp">Matricula</a>
      <ul>
        <li><a class="MenuBarItemSubmenu" href="#">Elemento 3.1</a>
          <ul>
            <li><a href="#">Elemento 3.1.1</a></li>
            <li><a href="#">Elemento 3.1.2</a></li>
          </ul>
        </li>
        <li><a href="#">Elemento 3.2</a></li>
        <li><a href="#">Elemento 3.3</a></li>
      </ul>
    </li>
</ul>
</div>
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
    <td width="83%" height="544" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><font face="Arial"><b>&nbsp;&nbsp;&nbsp;
        Bienvenido :</b> <%=strAdministrador%></font></p>
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <div align="center">
        <center>
      <table border="0" width="80%" cellspacing="0" cellpadding="0">
        <tr>
          <td width="100%" bgcolor=#f8a5a5>
            <p align="center"><font size="4" face="Arial">
                        <strong>Admistrador</strong></font></td>
        </tr>
                <tr>
                  <td width="100%">
                    <p align="center">&nbsp;
                      
                    </p>
                    <p align="center">
                      <font face="Arial">
                        El sistema le permite dar mantenimiento
                        <br/>
                        a las diferentes tablas del sistema
                      </font>
                    </p>
                    <p align="center">&nbsp;
                      
                    </p>
                    <table border="0" width="100%" cellspacing="0"
                           cellpadding="0">
                      <tr>
                        
                      </tr>
                    </table>
                  </td>
                </tr>
      </table>
        </center>
      </div>
    </td>
  </tr>
</table>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>

</html>
