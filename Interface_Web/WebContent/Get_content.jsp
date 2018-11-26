<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entities.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
	<% List<Voiture_entity> voitures = (List<Voiture_entity>)request.getAttribute("voitures"); %>
	<% List<Moto_entity> motos = (List<Moto_entity>)request.getAttribute("motos"); %>
	
	<title>Content</title>
</head>
<body>
 	<h1>Voitures disponibles</h1>
	
 	<table>
		<% for(Voiture_entity v : voitures) { %> 
			    <tr> 
	                <td><%= v.getMarque() %></td> 
	                <td><%= v.getModele() %></td> 
	                <td><%= v.getPrix() %></td> 
	            </tr> 
	     <%}%> 
     </table>
	 
	<h1>Motos disponibles</h1>
	
 	<table>
		<% for(Moto_entity m : motos) { %> 
			    <tr> 
	                <td><%= m.getMarque() %></td> 
	                <td><%= m.getModele() %></td> 
	                <td><%= m.getPrix() %></td> 
	            </tr> 
	     <%}%>
     </table>
	
</body>
</html>