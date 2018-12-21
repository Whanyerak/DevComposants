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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"><link rel="stylesheet" href="css/index.css" /><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css" />
	<title>Inscription</title>
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
	</header>

<body>
	
	<div class="container">
		<form action="User_Servlet" method="post">
			<div class="form-group">
				<label for="exampleInputUser1">Nom d'utilisateur</label>
				<input type="text" name="username" class="form-control" placeholder="Michel Cymes">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Adresse mail</label>
				<input type="email" name="email" class="form-control" placeholder="user@fournisseur.fr">
				<small id="emailHelp" class="form-text text-muted">Nous protégeons vos données; votre adresse mail ne sera jamais partagée.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label>
				<input type="password" name="password" class="form-control" placeholder="Mot de passe">
			</div>
			<button type="submit" class="btn btn-primary">S'inscrire</button>
		</form>
	</div>
	
</body>
</html>