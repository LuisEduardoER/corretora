<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<%
	ImovelFacade imovelFacade = new ImovelFacade();
	Collection colImoveis = imovelFacade.listarImoveis();
%>

<%@page import="java.util.Collection"%>
<%@page import="facades.ImovelFacade"%>
<%@page import="vo.Imovel"%>
<%@page import="java.util.Iterator"%>
<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>Imóveis</title>
</head>

<body bgcolor="FFFFFF">
<div align="center">
<table width="99%" border="1" cellspacing="0" cellpadding="0"
	style="border-collapse: collapse" bordercolor="#000000">

	<%
		for (Iterator i = colImoveis.iterator(); i.hasNext();) {
			Imovel im = (Imovel)i.next();
			out.println("<tr>");
			out.println("<td align=center><img src=images/Fotos/Apt01/principal.JPG");
			out.println("style=\"width: 255px; height: 148px;\" /></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td align=\"center\">"+im.getNome()+"</td></tr>");
		}
	%>

	
</table>
</div>


</body>

</html>