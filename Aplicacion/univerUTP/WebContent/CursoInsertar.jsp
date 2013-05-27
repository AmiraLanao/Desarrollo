<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>
<%
	//Para verificar la sesion.
if(session.getAttribute("strAdmCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.CursoDAO" id="CURSODAO" scope="session"/>

<%
String GenCodCurs=CURSODAO.GenerarCodCurs();
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
      <p align="center"><font size="3"><b>Insertar Curso</b></font></p>
      <form method="POST" action="cursoMan">
        <div align="center">
          <center>
          <table border="0" width="46%" cellpadding="0">
          


            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Codigo</td>
              <td width="62%"><input type="text" name="txtCodigo" size="20" value="<%=GenCodCurs%>"></td>
            </tr>
            <tr>
              <td width="63%" bgcolor="#f8a5a5">&nbsp;Nombres</td>
              <td width="62%"><input type="text" name="txtNombre" size="20" ></td>
            </tr>
 
 <%-- =============================================================================================== --%>   
 			<tr>
				<td width="63%" bgcolor="#f8a5a5">&nbsp;Num. Vacantes</td>
				<td width="62%">
					<select name="SelecVacantes">
						<option value="15">Baja   --> 15</option>
						<option value="20">Media  --> 20</option>
						<option value="40">Maxima --> 40</option>
					</select>
				</td>
            </tr>
 

 			<tr>
				<td width="63%" bgcolor="#f8a5a5">&nbsp;Num. Creditos</td>
				<td width="62%">
					<select name="SelecCreditos">
						<option value="2">Dos</option>
						<option value="3">Tres</option>
						<option value="4">Cuatro</option>
						<option value="5">Cinco</option>
					</select>
				</td>
            </tr>


         
			<tr>
				<td width="63%" bgcolor="#f8a5a5">&nbsp;Horario</td>
				<td width="62%">
					<select name="selectHora">
						<option value="Lunes 08:00 a 11:00">Lunes 08:00 a 11:00</option>
						<option value="Martes 06:00 a 08:45 y Jueves 06:00 a 08:45">Martes 06:00 a 08:45 y Jueves 06:00 a 08:45</option>
						<option value="Miercoles 08:45 a 11:00 y Viernes 09:30 a 11:00">Miercoles 08:45 a 11:00 y Viernes 09:30 a 11:00</option>
					</select>
				</td>
            </tr>
<%-- =============================================================================================== --%>


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
