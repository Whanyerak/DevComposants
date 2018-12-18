<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<%
	List<Vehicule_entity> vehicules = (List<Vehicule_entity>) request.getAttribute("vehicules");
%>
<title>Content</title>
</head>
<body>

	<div class="container">
		<div class="jumbotron">
    		<h1 id="articles">Articles proposés en ce moment :</h1> 
		</div>
		<%-- <% for(Vehicule_entity v : vehicules) { %> --%>

		<div class="row">
			<%
				for (int i = 0; i < vehicules.size(); i++) {
			%>
			<%
				if ((i % 2) == 0) {
			%>
			<div class="col-sm-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title"><%=vehicules.get(i).getId()%>
							-
							<%=vehicules.get(i).getModele()%></h5>
						<p class="card-text"><%=vehicules.get(i).getMarque()%></p>
						<p class="card-text">
							Mise à
							<%=vehicules.get(i).getPrix()%>
							€
						</p>
						<%-- <a href="#" class="btn btn-primary">Voir l'annonce</a> --%>
						<form method="get" action="Vehicule_Servlet">
							<input type="hidden" name="id" value="<%=vehicules.get(i).getId()%>"/>
							<button class="fas fa-search" type="submit"></button>
						</form>
						<%-- <a href="Vehicule_Servlet?doGet">
						<p>--> <%=vehicules.get(i).getId()%> <--</p>
							<input type="hidden" name="id" value="<% vehicules.get(i).getId();%>"/>
							<i class="fas fa-search" name="id" value="<%=vehicules.get(i).getId()%>"></i>
						</a> --%>
					</div>
				</div>
			</div>
			<%
				}
			%>
			<%
				if ((i % 2) != 0) {
			%>
			<div class="col-sm-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title"><%=vehicules.get(i).getId()%>
							-
							<%=vehicules.get(i).getModele()%></h5>
						<p class="card-text"><%=vehicules.get(i).getMarque()%></p>
						<p class="card-text">
							Mise à
							<%=vehicules.get(i).getPrix()%>
							€
						</p>
						<%-- <a href="#" class="btn btn-primary">Voir l'annonce</a> --%>
						<a href="#"> <i class="fas fa-search"></i>
						</a>
					</div>
				</div>
			</div>
			<% } %>
			<% } %>
		</div>
	</div>

</body>
</html>