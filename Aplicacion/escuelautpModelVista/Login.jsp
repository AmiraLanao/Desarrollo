<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>

<html>
<head>

<title>Intranet de la Escuela</title>
</head>

<body bgcolor="#ffffff">

<p>&nbsp;</p>
<div id="enc_der"> 
  <span class="separator" style="clear: both; text-align: center;"><img src="images/logo.png" alt="logoutp" width="307" height="140" border="0"><img src="images/encabezado.jpg" alt="img utp" width="738" height="85"></span>
  <div class="separator" style="clear: both; text-align: center;"></div>
</div>
<p align="center">&nbsp;</p><p align="center">
       
      <font size="4" face="Arial" color="#000052">
        &gt;&gt;&gt;Ingreso de Usuarios &lt;&lt;&lt;
      </font>
    </p><p align="center">&nbsp;</p>

<form method="POST" action="validador">
  <div align="center">
    <center>
    <table border="0" width="40%" bgcolor=#f25e5e>
      <tr>
        <td width="29%">UsuarioX</td>
        <td width="71%"><input type="text" name="txtLogin" size="20"></td>
      </tr>
      <tr>
        <td width="29%">ContraseñaX</td>
        <td width="71%"><input type="password" name="txtPassword" size="20"></td>
      </tr>
    </table>
    </center>
  </div>
  <p align="center">
  <input type="submit" value="Ingresar " name="cboEnviar"> 
  <input type="reset" value="Limpiar" name="btnLimpiar"></p>
</form>


<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>

</body>

</html>
