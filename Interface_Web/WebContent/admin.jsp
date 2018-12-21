<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"><link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" href="css/index.css" />
	<title>Administration</title>
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
		<% if (user != null) { %>
			<h1>Bienvenue <%= user.getUsername() %> !</h1>
			<p class="vehicle_management">Que voulez-vous faire ?</p>
			<div role="tabpanel">
				<div class="col-sm-3">
					<ul class="nav nav-pills brand-pills nav-stacked" role="tablist">
						<li role="presentation" class="brand-nav active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Voir mon panier</a></li>
						<li role="presentation" class="brand-nav"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">Gestion des voitures</a></li>
						<li role="presentation" class="brand-nav"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">Gestion des motos</a></li>
						<li role="presentation" class="brand-nav"><a href="#tab4" aria-controls="tab4" role="tab" data-toggle="tab">Gestion des autres véhicules</a></li>
					</ul>
				</div>
				<div class="col-sm-9">
					<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="tab1">
							<form action="Voiture_Servlet" method="post">
								Gestion de la panière
							</form>
						</div>
						<div role="tabpanel" class="tab-pane" id="tab2">
							<form action="Voiture_Servlet" method="post">
								<label class="vehicle">Ajout d'une voiture</label>
								<div class="form-group">
									<input type="text" class="form-control" name="marque" placeholder="Marque">
									<input type="text" class="form-control" name="modele" placeholder="Modèle">
									<select type="text" class="form-control"  name="options" multiple>
										<option value="Lance missiles">Lance missiles</option>
										<option value="Canon à vaches">Canon à vaches</option>
										<option value="Distributeur de capotes">Distributeur de capotes</option>
									</select>
									<input type="number" class="form-control" name="prix" placeholder="Prix">
									<input type="number" class="form-control" name="quantite" placeholder="Quantité disponible">
									<input type="text" class="form-control" name="couleur" placeholder="Couleur">
									<textarea type="text" class="form-control" name="description" placeholder="Description"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Créer ce produit</button>
							</form>
						</div>
						<div role="tabpanel" class="tab-pane" id="tab3">
							<form action="Moto_Servlet" method="post">
							<label class="vehicle">Ajout d'une moto</label>
								<div class="form-group">
									<input type="text" class="form-control" name="marque" placeholder="Marque">
									<input type="text" class="form-control" name="modele" placeholder="Modèle">
									<select type="text" class="form-control"  name="options" multiple>
										<option value="Ailes">Ailes</option>
										<option value="Nitro">Nitro</option>
										<option value="Petites roues">Petites roues</option>
									</select>
									<input type="number" class="form-control" name="prix" placeholder="Prix">
									<input type="number" class="form-control" name="quantite" placeholder="Quantité disponible">
									<input type="text" class="form-control" name="couleur" placeholder="Couleur">
									<textarea type="text" class="form-control" name="description" placeholder="Description"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Créer ce produit</button>
							</form>
						</div>
						<div role="tabpanel" class="tab-pane" id="tab4">
							<form action="Autre_Servlet" method="post">
							<label class="vehicle">Ajout d'un autre véhicule</label>
								<div class="form-group">
									<input type="text" class="form-control" name="marque" placeholder="Marque">
									<input type="text" class="form-control" name="modele" placeholder="Modèle">
									<select type="text" class="form-control"  name="options" multiple>
										<option value="Ressort">Ressort</option>
										<option value="Rames">Rames</option>
										<option value="Roue de secours">Roue de secours</option>
									</select>
									<input type="number" class="form-control" name="prix" placeholder="Prix">
									<input type="number" class="form-control" name="quantite" placeholder="Quantité disponible">
									<input type="text" class="form-control" name="couleur" placeholder="Couleur">
									<textarea type="text" class="form-control" name="description" placeholder="Description"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Créer ce produit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		
	</div>
		<% } else { %>
			<div class="alert alert-danger" role="alert">
				<h4 class="alert-heading">Vous ne pouvez pas aller plus loin!</h4>
				<p>Vous ne pouvez pas aller plus loin car vous n'êtes pas connecté.</p>
				<p>Si vous ne possédez pas de compte, vous pouvez en créer un pour mettre en ligne une annonce.</p>
				<hr>
				<p class="mb-0">Pour créer un compte, rendez-vous dans la rubrique "Inscription" dans la barre de navigation.</p>
			</div>
		<% } %>
	</div>
	
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</body>
</html>