<%@page import="univer.dao.*"%>
<%@page import="univer.bean.*" %>
<%@page import="univer.util.*" %>
<%
	//Para verificar la sesion.
if(session.getAttribute("strAlumCodigo")==null){
	response.sendRedirect("Login.jsp");
}
%>

<jsp:useBean class="univer.dao.NotaDAO" id="NOTADAO" scope="session"/>
<jsp:useBean class="univer.dao.CursoDAO" id="CURSODAO" scope="session"/>

<%
String strAlumCod=String.valueOf(session.getAttribute("strAlumCodigo"));

Lista objListNotas=NOTADAO.obtenerNotaCursAlum(strAlumCod);
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
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>P1</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>P2</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>P3</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>P4</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>P5</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Prom Pract</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>EP</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>EF</b></td>
            <td width="10%" bgcolor="#f8a5a5" align="center" height="19"><b>Promedio Fin</b></td>
          </tr>
		<%
		
		double PromP=0.0;
		double PromF=0.0;
		
		for(int i=0;i<objListNotas.getTamanio();i++){
		
		%>          
          <tr>
          	
          	<%
          	//----Calculando el Promedio------
          	PromP = (
          	((Nota)objListNotas.getElemento(i)).getIntNotaPract1() +
            ((Nota)objListNotas.getElemento(i)).getIntNotaPract2() +
			((Nota)objListNotas.getElemento(i)).getIntNotaPract3() +
			((Nota)objListNotas.getElemento(i)).getIntNotaPract4() +
			((Nota)objListNotas.getElemento(i)).getIntNotaPract5()
			)/5;
			
			PromF = (
			((Nota)objListNotas.getElemento(i)).getIntNotaExaPa() +
			(((Nota)objListNotas.getElemento(i)).getIntNotaExaFi())*2 +
			PromP
			)/4;
          	%>
          	
            <td width="19%" height="18"><%=((Curso)objListCurso.getElemento(i)).getVchCurNombre()%></td>
            
            <td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaPract1()%></td>
            <td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaPract2()%></td>
			<td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaPract3()%></td>
			<td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaPract4()%></td>
			<td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaPract5()%></td>
			<td width="10%" height="18"><%= PromP %></td>
			<td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaExaPa()%></td>
			<td width="10%" height="18"><%=((Nota)objListNotas.getElemento(i)).getIntNotaExaFi()%></td>
			<td width="10%" height="18"><%= PromF %></td>
			

          </tr>
		<%}%>        
		  
        </table>
        </center>
      </div>
      <p>&nbsp;
      <p>
      

      <p>
      <p>&nbsp;
      <p>&nbsp;
      
      
      

    </td>
  </tr>
</table>



</body>

</html>
