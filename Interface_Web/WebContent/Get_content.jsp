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
	<p>Voitures en vente sur notre site</p>
	<table>
		<thead>
			<tr>
				<th>Marque</th>
				<th>Modele</th>
				<th>Prix</th>
			</tr>
		</thead>
		<tbody>
			<% for(Voiture_entity v : voitures) { %>
				<tr>
					<td><%= v.getMarque() %></td>
					<td><%= v.getModele() %></td>
					<td><%= v.getPrix() %></td>
				</tr>
			<% } %>
		</tbody>
	</table>

	<p>Motos en vente sur notre site</p>
	<table class="table">
		<thead>
			<tr>
				<%-- <th scope="col">#</th> --%>
				<th scope="col">Marque</th>
				<th scope="col">Modele</th>
				<%-- <th scope="col">Couleur</th> --%>
				<th scope="col">Prix</th>
			</tr>
		</thead>
		<tbody>
			<% for(Moto_entity v : motos) { %>
				<tr>
					<%-- <td scope="row"><%= v.getId() %></td> --%>
					<td><%= v.getMarque() %></td>
					<td><%= v.getModele() %></td>
					<%-- <td><%= v.getCouleur() %></td> --%>
					<td><%= v.getPrix() %></td>
				</tr>
			<% } %>
		</tbody>
	</table>

 	<%-- <h1>Voitures disponibles</h1>
	
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
     </table> --%>
	
</body>
</html>