<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@page import="vo.Pessoa"%>
<html>
<head>
<meta http-equiv="Content-Language" content="pt-br">
<title>CORRETORA DE IMÓVEIS</title>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">

<link rel="stylesheet" href="css/inicial.css" type="text/css">

<script language="javascript" src="scripts/esconderObjeto.js"
	type="text/javascript"></script>

</head>

<body>

<table width="770" border="0" align="center" cellpadding="0"
	cellspacing="1" bgcolor="#000000">
	<tr>
		<td bgcolor="#FFFFFF">
		<table width="770" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td><img alt="Logo" src="images/logo.gif" width="359"
					height="45"></td>
				<td width="411">&nbsp;</td>
			</tr>
			<tr>
				<td width="359"><img alt="BarraEsquerda"
					src="images/leftbar.gif" width="359" height="39"></td>
				<td align="right" bgcolor="#336CA1">
				<%
					if (request.getSession().getAttribute("usuario") != null) {
						Pessoa p = (Pessoa)request.getSession().getAttribute("usuario");
						out
								.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">"
										+ "<tr><td width=\"381\" class=\"campoFormulario\"><p align=\"right\">"
										+ "Bem vindo, "
										+ p.getNome() + " " + p.getSobreNome()
										+ "  [<a href=\"logout.jsp\">Sair</a>] </td></tr></table>");

					}else{
						
						out.write("<form name=\"main\" action=\"/corretora/login\" method=\"post\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\"><tr><td width=\"39\" class=\"campoFormulario\">Login:</td>");
						out.write("<td width=\"68\" class=\"campoFormulario\"> <input name=\"login\" id=\"login\" value=\"\" type=\"text\" size=\"10\" class=\"campoObrigatorio\" onFocus=\"this.style.backgroundColor = '#e3edff'\" onBlur=\"this.style.backgroundColor = '#ffffff'\" tabindex=\"1\"  ></td>");
						out.write("<td width=\"41\" class=\"campoFormulario\">Senha:</td><td width=\"94\" class=\"campoFormulario\"><input name=\"senha\"  id=\"senha\" type=\"password\" size=\"10\" class=\"campoObrigatorio\" onFocus=\"this.style.backgroundColor = '#e3edff'\" onBlur=\"this.style.backgroundColor = '#ffffff'\" tabindex=\"2\" ></td>");
						out.write("<td width=\"138\" class=\"campoFormulario\"><input type=\"image\" alt=\"Ok\" style=\"border:0;\" src=\"images/ok.gif\"><a href=\"cadastro.jsp\" target=\"principal\"><img  alt=\"Registrar\" border=\"0\" src=\"images/registrar.gif\"></a></td>	</tr></table></form>");      
					
						
					}
				%> 

				

				</td>
			</tr>
			<tr>
				<td colspan="2"><img alt="barraCima" src="images/topbar.gif"
					width="770" height="69"></td>
			</tr>
			<tr>
				<td colspan="2">

				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					style="background-image: url(images/but_bg.gif)">
					<tr>
						<td align="right" width="3">
						</td>
						<td align="right"><a href="cadastro.jsp" target="principal">
						<img border="0" alt="Home" src="images/home.gif" align="left" ></a></td>
						<td align="right"><a href="cadastroimovel.jsp" target="principal">
						<img border="0" alt="Home" src="images/home.gif" align="left"></a></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
						<td align="right">
						<img border="0" alt="Home" src="images/home.gif" align="left"></td>
					</tr>
				</table>

				</td>
			</tr>
		</table>

		<table width="770" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top" bgcolor="#8FBEE8">

				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td>&nbsp;</td>
					</tr>
					</table>
				<iframe name="principal" width="769"
					height="800" src="inicial.jsp" style="align: middle; border: 0"
					frameborder="0"></iframe>
				</td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>
