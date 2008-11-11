<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

request.getSession().setAttribute("login",null);
request.getSession().removeAttribute("senha");
response.sendRedirect("index.jsp");
%>

