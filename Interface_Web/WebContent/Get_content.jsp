<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entities.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
	<% List<Vehicule_entity> vehicules = (List<Vehicule_entity>)request.getAttribute("vehicules"); %>
	
	<title>Content</title>
</head>
<body>
	
	<p>Véhicules en vente sur notre site</p>
	
	<% vehicules.size(); %>
 	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Marque</th>
				<th scope="col">Modele</th>
				<th scope="col">Prix</th>
			</tr>
		</thead>
		<tbody>
			<% for(Vehicule_entity v : vehicules) { %>
				<tr>
					<td scope="row"><%= v.getId() %></td>
					<td><%= v.getMarque() %></td>
					<td><%= v.getModele() %></td>
					<td><%= v.getPrix() %></td>
				</tr>
			<% } %>
		</tbody>
	</table>
	
</body>
</html>