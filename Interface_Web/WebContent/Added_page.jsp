<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<% Voiture_entity v = (Voiture_entity)request.getAttribute("v"); %>
	<% Moto_entity m = (Moto_entity)request.getAttribute("m"); %>
<title><%= m.getModele() %></title>
</head>
<body>

 	<%= m.getMarque() %> 
	<%= m.getModele() %> 
	<%= m.getPrix() %> 
	<%= m.getRoulettes() %>
	
<%-- 	<%= v.getMarque() %> 
	<%= v.getModele() %> 
	<%= v.getPrix() %> 
	<%= v.getCouleur() %> --%>

	<form action="AddVoiture_Servlet" method="get">
	
		<button type="submit">Access voiture</button>
	
	</form>


</body>
</html>