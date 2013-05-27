<%@page import="escuela.dao.*"%>
<%@page import="escuela.bean.*" %>
<%@page import="escuela.util.*" %>

<%
//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="escuela.dao.ProductoDAO" id="PRODUCTODAO" scope="session"/>

<%
Lista objListaP=PRODUCTODAO.obtenerProducto();
%>

<html>
<head>
<title>Cosultar Matricula</title>
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
      <p align="center"><font size="3"><b>Cosultar Matricula de alumnos por Producto</b></font></p>
      <form method="POST" action="MatriculaConsulta2.jsp">
      <div align="center">
        <center>
        <br>
        <br>
        <br>
	   <table border="1" width="86%" height="74">
          <tr>
            <td width="19%" bgcolor="#f8a5a5" align="center" height="19"><b>Codigo</b></td>
            <td width="36%" bgcolor="#f8a5a5" align="center" height="19"><b>Producto</b></td>
            <td width="24%" bgcolor="#f8a5a5" align="center" height="19"><b># Vacamtes</b></td>
            <td width="9%" bgcolor="#f8a5a5" align="center" height="19"><b>Seleccion</b></td>
          </tr>
		<%for(int i=0;i<objListaP.getTamanio();i++){%>          
          <tr>
            <td width="19%" height="18"><%=((Producto)objListaP.getElemento(i)).getCodigo()%></td>
            <td width="36%" height="18"><%=((Producto)objListaP.getElemento(i)).getNombres() %></td>
            <td width="24%" height="18"><%=((Producto)objListaP.getElemento(i)).getVacante()%></td>
            <td width="9%" height="18" align="center">
            	<input type="radio" value="<%=((Producto)objListaP.getElemento(i)).getCodigo()%>" name="sproducto" <%if(1==i) {%>checked <%}%>> 
            </td>
          </tr>
		<%}%>        
        </table>
        
      </div>
      <p>&nbsp;
      <p>
      
      <div align="center">
       <center>
      
        <table border="1" width="86%">
          <tr>
            <%-- <td width="100%" bgcolor="#f8a5a5"><font size="3">Seleccionar el tipo de Curso</font></td>--%>
             <%--<td width="100%" bgcolor="#f8a5a5"><font size="3"><a href="MatriculaInsertar.jsp?val=sproducto">>Siguiente</a></font></td>--%>
             <input type="submit" value="    Siguiente    " name="btnMatricula">
            
          </tr>
        </table>

          </center>
      </div>
	</form>
      <p>
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