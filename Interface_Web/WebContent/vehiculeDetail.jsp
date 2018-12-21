<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="entities.Option_entity" %> 
<%@ page import="entities.*" %> 

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"><link rel="stylesheet" href="css/index.css" /><link rel="stylesheet" href="css/index.css" />
<title>Détails</title>
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
	<% Vehicule_entity ve = (Vehicule_entity)request.getAttribute("vehicule"); %>

	<div class="container">
		<div class="jumbotron">
    		<h1 id="articles">Détails de l'article proposé : </h1> 
		</div>

    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><%= ve.getMarque() %></h5>
        <p class="card-text"><%= ve.getModele() %></p>
      </div>
      <ul class="list-group list-group-flush">
        <li class="list-group-item"><p>Description du produit : </p><p><%= ve.getDescription() %></p></li>
        <li class="list-group-item">Prix : <%= ve.getPrix() %> €
        <p>Convertir le prix en : </p>
				<form action="ConvertMonney" method="get">
						<select type="text" class="form-control"  name="devise">
							<option value="Desertot">Desertot</option>
							<option value="Yen">Yen</option>
							<option value="Dollar">Dollar</option>
							<option value="Franc Suisse">Franc Suisse</option>
						</select>
						<input type="hidden" name="prix" value="<%=ve.getPrix()%>"/><br>
						<button type="submit" class="btn btn-warning">Convertir</button>
					</form>
					
				</li>

        <% if(ve.getOptions().size() != 0){%>
        <li class="list-group-item">Options : <ul><%
        	for(Option_entity o : ve.getOptions()){
        %>
          <li><%= o.getName() %></li> <%}
        %></ul>
        </li>
        <%}%>

      </ul>
      <div class="card-body">
				<% if(user == null) { %>
					<p class="alert alert-danger">
						Vous devez vous connecter pour ajouter cet article dans le panier. <a href="Login.jsp">Connexion</a><br>
						Toujours pas de compte? Vous pouvez en <a href="Inscription.jsp">créer un.</a>					
					</p>
				<% } else { %>
					<form action="Cart_Servlet" method="post">
						<input type="hidden" name="id" value="49">
						<input type="hidden" name="idUser" value="2" >
						<button type="submit" class="btn btn-link">Mettre dans le panier</button>
					</form>
				<% } %>
				<a href="index.jsp" class="card-link">Retour à l'accueil</a>
      </div>
    </div>
	</div>

</body>
</html>	