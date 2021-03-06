<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entities.*"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous" />
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<link rel="stylesheet" href="css/index.css" />
		<title>PA - le dieu</title>
		<% User_entity user = (User_entity)request.getSession(false).getAttribute("currentSessionUser");%>
	</head>

	<body>

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


		<div class="menu">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="container">
							<form action="Voiture_Servlet" method="get">
								<button type="submit" class="btn btn-link">
									<img class="card-img-top" src="Images/voiture.jpeg" alt="Card image cap" class="image" />
										<div class="overlay">
											<div class="text">Voir toutes nos Voitures</div>
										</div>
								</button>
							</form>
						</div>
						<%-- <div class="card-body"> --%>
							<%-- <h5 class="card-title">Voitures</h5>
							<p class="card-text">Voir toutes les voitures du site.</p> --%>
							<%-- <form action="Voiture_Servlet" method="get">
								<button type="submit" class="btn btn-link">Voir toutes nos Voitures</button>
							</form> --%>
						<%-- </div> --%>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="container">
							<form action="Moto_Servlet" method="get">
								<button type="submit" class="btn btn-link">
									<img class="card-img-top" src="Images/moto.jpg" alt="Card image cap" class="image" />
										<div class="overlay">
											<div class="text">Voir toutes nos Motos</div>
										</div>
								</button>
							</form>
						</div>
						<%-- <div class="card-body"> --%>
							<%-- <h5 class="card-title">Motos</h5>
							<p class="card-text">Voir toutes les motos du site.</p> --%>
							<%-- <form action="Moto_Servlet" method="get">
								<button type="submit" class="btn btn-primary">Voir toutes nos Motos</button>
							</form>
						</div> --%>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="container">
							<form action="Autre_Servlet" method="get">
								<button type="submit" class="btn btn-link">
									<img class="card-img-top" src="Images/autre.png" alt="Card image cap" class="image" />
										<div class="overlay">
											<div class="text">Voir tout nos autres véhicules</div>
										</div>
								</button>
							</form>
						</div>
						<%-- <div class="card-body"> --%>
							<%-- <h5 class="card-title">Autres</h5>
							<p class="card-text">Voir tous les véhicules autres du site.</p> --%>
							<%-- <form action="Autre_Servlet" method="get">
								<button type="submit" class="btn btn-primary">Voir tout nos autres véhicules</button>
							</form> --%>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</body>
</html>
