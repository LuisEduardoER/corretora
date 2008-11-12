<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="vo.Imovel"%>
<%@page import="java.util.Collection"%>
<%@page import="facades.ImovelFacade"%>

<%
	ImovelFacade imovelFacade = new ImovelFacade();
	Collection<Imovel> colImoveis = imovelFacade.listarImoveis();
	
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Imóveis</title>
</head>

<body bgcolor="FFFFFF">
<div align="center">
<table width="99%" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#000000">
	<tr>
	
		<td align="center"><img src="images/Fotos/Apt01/principal.jpg" style="width : 255px; height : 148px;" /></td>
		<td align="center"><img src="images/Fotos/cmiii_182e.jpg"  style="width : 215px; height : 170px;"/></td>
		<td align="center"><img src="images/Fotos/Imoveis_residenciais.jpg"  style="width : 228px; height : 194px;"/></td>
	</tr>
	<tr>
		<td align="center">CONDOMÍNIO FECHADO
DE SOBRADOS
GOPOÚVA, GUARULHOS</td>
		<td align="center">CONDOMÍNIO FECHADO
DE SOBRADOS
GOPOÚVA, GUARULHOS</td>
		<td align="center">CONDOMÍNIO FECHADO
DE SOBRADOS
GOPOÚVA, GUARULHOS</td>
	</tr>
</table>
</div>


</body>

</html>