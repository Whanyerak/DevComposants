<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"><link rel="stylesheet" href="css/index.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%
	List<Vehicule_entity> vehicules = (List<Vehicule_entity>) request.getAttribute("vehicules");
%>
<title>Content</title>
<% User_entity user = (User_entity)request.getSession(false).getAttribute("currentSessionUser");%>
</head>
	<header
		class="navbar navbar-expand flex-column flex-md-row bd-navbar header">
		<div class="navbar-nav-scroll">
			<ul class="navbar-nav bd-navbar-nav flex-row">
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/">Accueil</a></li>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/Voiture_Servlet">Voitures</a></li>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/Moto_Servlet">Motos</a></li>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/Autre_Servlet">Autres</a></li>
			</ul>
		</div>
		
		<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
			<% if(user == null) { %>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/Login.jsp">Connexion</a></li>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/Inscription.jsp">Inscription</a></li>
			<% } else { %>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/admin.jsp">Mon espace</a></li>
				<li class="nav-item"><a class="nav-item nav-link mr-md-4"
					href="/Interface_Web/User_Servlet?method=logout">Deconnexion</a></li>
			<% } %>		
		</ul>
	</header>
<body>

	<div class="container">
		<div class="jumbotron">
    		<h1 id="articles">Articles proposés en ce moment :</h1> 
		</div>

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

						<form method="get" action="Vehicule_Servlet">
							<button class="btn btn-light" type="submit" name="id" value="<%=vehicules.get(i).getId()%>">
								<i class="fas fa-search"></i>
							</button>
						</form>

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
						<form method="get" action="Vehicule_Servlet">
							<button class="btn btn-light" type="submit" name="id" value="<%=vehicules.get(i).getId()%>">
								<i class="fas fa-search"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
			<% } %>
			<% } %>
		</div>
		
	</div>

</body>
</html>