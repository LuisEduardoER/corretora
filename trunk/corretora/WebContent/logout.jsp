<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

request.getSession().setAttribute("usuario",null);
response.sendRedirect("index.jsp");
%>

