<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	ImovelFacade imovelFacade = new ImovelFacade();
	Imovel i = new Imovel();
	i = imovelFacade.buscarImovelPorPK(new Integer(request
			.getParameter("codigo")));
%>
<%@page import="facades.ImovelFacade"%>
<%@page import="vo.Imovel"%>
<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>INFORMAÇÃO</title>
<link rel="stylesheet" href="css/estilo.css" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="js/util.js"></script>


</head>

<body onload='init()' onunload='GUnload()'bgcolor="FFFFFF">



		<div style="width: 300px; position: absolute; left: 52px; top: 31px;">
		<img
			src="/corretora/images/Fotos/<% out.println(i.getPasta()); %>/principal.jpg"
			width="300" height="228" /></div>
			<div style="width: 300px; position: absolute; left: 52px; top: 331px;" >
			<table border="0" width="95%" cellpadding="0" style="border-collapse: collapse" >
				<tr>
					<td width="460" class="campoFormulario">Para ver como chegar nesse imóvel <a href="google/google.jsp?lat=<%out.print(i.getLatitude()); %>&lon=<% out.print(i.getLongitude()); %>">clique aqui</a></td>
				</tr>
			</table>
			</div>		
<div style="position: absolute;top: 31px;left : 400px; width : 358px;">
<table border="0" width="95%" cellpadding="0" style="border-collapse: collapse" >

		<tr>
		<td width="460" class="títulos">
		<%
			out.println(i.getNome().toUpperCase());
		%>
		</td>
	</tr>

	<tr>
		<td width="460" class="campoFormulario">
		<%
			out.println(i.getLogradouro().toUpperCase() + " "
					+ i.getComplemento().toUpperCase() + " "
					+ i.getNumero().toUpperCase() + " "
					+ i.getBairro().toUpperCase() + " "
					+ i.getCidade().toUpperCase() + "-"
					+ i.getEstado().toUpperCase() + " " + i.getCep());
		%>
		</td>
	</tr>
	<tr>
		<td width="460" class="campoFormulario"><br/>
		
				<%
					out.println(i.getDescricao().toUpperCase());
				%>
		
	
		</td>
	</tr>
</table>
</div>


</body>

</html>