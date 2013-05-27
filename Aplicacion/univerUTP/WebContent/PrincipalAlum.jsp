<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%-- ======================================================= --%>
<%-- ===================== Codigo Java ===================== --%>
<%-- ======================================================= --%>

<%@ page contentType="text/html;charset=windows-1252"%>

<html>

<%
//Para verificar la sesion.
if(session.getAttribute("strAlumCodigo")==null){
	response.sendRedirect("Login.jsp");
}


String strAlumNom=String.valueOf(session.getAttribute("strAlumNombre"));
String strAlumCod=String.valueOf(session.getAttribute("strAlumCodigo"));

strAlumCod = strAlumCod.replace(" ", "");
%>

<%-- ======================================================= --%>
<%-- ================== Fin Codigo Java ==================== --%>
<%-- ======================================================= --%>

<head>
<title>Bienvenidoa la Intranet Alumnos</title>
</head>

<body>
<table border="0" width="100%" height="550" cellspacing="0" cellpadding="0">
  <tr>
    <td width="17%" height="544" valign="top">
    
    <table border="1" width="97%" cellspacing="0" bordercolor="#800000">
      <tr>
        <td width="100%">

<%-- ======================================================= --%>
        <!--Archivo para el menu -->
        <jsp:include page="menuAlum.htm" flush="true"/>

<%-- ======================================================= --%>

        
        </td>
      </tr>
    </table>
    
    </td>
    <td width="83%" height="544" valign="top"><p>&nbsp;</p>
      <p>
        

<%-- ======================================================= --%>
<%-- ===================== Codigo Java ===================== --%>
<%-- ======================================================= --%>
   
       <font face="Arial"><b>
        Bienvenido : </b><%=strAlumNom%></font></p>
        
        <font face="Arial"><b>
        Codigo : </b> <%=strAlumCod%></font></p>        
        
      <img src="images/Alumnos/<%=strAlumCod%>.jpg" alt="Alumno Registrado">
      
<%-- ======================================================= --%>
<%-- ================== Fin Codigo Java ==================== --%>
<%-- ======================================================= --%>      
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <div align="center">

      </div>
    </td>
  </tr>
</table>
</body>

</html>
