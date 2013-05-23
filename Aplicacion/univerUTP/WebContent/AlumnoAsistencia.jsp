<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>
<%
	//Para verificar la sesion.
if(session.getAttribute("strAlumCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.AsistenciaDAO" id="ASISTENCIADAO" scope="session"/>
<jsp:useBean class="univer.dao.CursoDAO" id="CURSODAO" scope="session"/>

<%
String strAlumCod=String.valueOf(session.getAttribute("strAlumCodigo"));

Lista objListAsisten=ASISTENCIADAO.obtenerAsisCursAlum(strAlumCod);
Lista objListCurso=CURSODAO.obtenerCursAlum(strAlumCod);

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
			<td width="36%" bgcolor="#f8a5a5" align="center" height="19"><b>Curso</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem1</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem2</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem3</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem4</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem5</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem6</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem7</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem8</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem9</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Sem10</b></td>
          </tr>
          
		<%for(int i=0;i<objListAsisten.getTamanio();i++){%>          
          <tr>
          	
            <td width="19%" height="18"><%=((Curso)objListCurso.getElemento(i)).getVchCurNombre()%></td>
            
            <td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem1()%></td>
            <td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem2()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem3()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem4()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem5()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem6()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem7()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem8()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem9()%></td>
			<td width="10%" height="18"><%=((Asistencia)objListAsisten.getElemento(i)).getIntAsiSem10()%></td>
			
          </tr>
		<%}%>        
		  
        </table>
        </center>
      </div>
      <p>&nbsp;
      <p>
      <p><font face="Arial"><b>&nbsp;&nbsp;&nbsp;
        La asitencia se toma si es 1 Asistio y 0 no Asistio </b>
        <p>&nbsp;</p>      

      <p>
      <p>&nbsp;
      <p>&nbsp;
      
      
      

    </td>
  </tr>
</table>



</body>

</html>
