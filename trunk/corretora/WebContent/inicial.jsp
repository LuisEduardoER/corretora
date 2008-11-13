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
<link rel="stylesheet" href="css/estilo.css" type="text/css">
</head>

<body bgcolor="FFFFFF">
<div align="center">
<table width="99%" border="0" cellspacing="0" cellpadding="0"
	style="border-collapse: collapse" bordercolor="#000000">

	<%
		int x = 1;
		for (Iterator i = colImoveis.iterator(); i.hasNext();) {

			if (x == 1) {
				out.println("<tr>");
			}
			out.println("<td>");

			Imovel im = (Imovel) i.next();
			out
					.println("<br/><table width=\"99%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" 	style=\"border-collapse: collapse\" bordercolor=\"#000000\">");
			out.println("<tr>");
			out.println("<td align=center><img src=images/Fotos/"
					+ im.getPasta() + "/principal.jpg");
			out.println("style=\"width: 200px; height: 148px;\" /></td>");
			out.println("</tr>");

			out.println("<tr>");
			out.println("<td  class=\"campoFormulario\" align=\"center\"><br/>" + im.getNome().toUpperCase() + ", "
					+ im.getCidade().toUpperCase() + " - " + im.getEstado().toUpperCase() + " [<a href=\"/corretora/informacoes.jsp?codigo="+im.getId()+"\">Saiba Mais</a>]"
					+ "</td></tr></table>");

			out.println("</td>");

			x++;
			if (x == 4) {
				out.println("</tr>");
				x = 1;
			}
		}
	%>


</table>
</div>


</body>

</html>