<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>
<%
	//Para verificar la sesion.
if(session.getAttribute("strAlumCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.PensionDAO" id="PENSIONDAO" scope="session"/>
<jsp:useBean class="univer.bean.Pension" id="PENSION" scope="session"/>

<%
String strAlumCod=String.valueOf(session.getAttribute("strAlumCodigo"));

//Pension objEntPens=new Pension();

 int pensi=PENSIONDAO.obtenerPensionPK(strAlumCod).getIntPensMonto();
%>

<html>
<head>
<title>Intranet - Administrador</title>
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
      <p align="center"><font size="3"><b>Lista Notas del Alumno</b></font></p>
      <div align="center">
        <center>
        <table border="1" width="86%" height="74">
          <tr>
			<td width="36%" bgcolor="#f8a5a5" align="center" height="19"><b>Num Cuotas</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Monto Programado</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Pronto Pago</b></td>
          </tr>
         
        <%
        	double np= (pensi/5);
        	double n10= ((pensi/5)*0.90);
        %>  
        
		<%for(int i=1;i<=4;i++){%>          
          <tr>
          	
            <td width="19%" height="18">Cuota Num <%=i%></td>
            <td width="19%" height="18"><%=np%></td>
            <td width="19%" height="18"><%=n10%></td>
            

          </tr>
		<%}%>        




</body>

</html>
