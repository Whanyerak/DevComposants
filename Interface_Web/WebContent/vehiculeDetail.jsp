<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="entities.*" %> 

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css" />
<title>DAT TITLE!!! BOUM(ceci est une explosion de Michael Bay)</title>
</head>
<body>
	<% Vehicule_entity ve = (Vehicule_entity)request.getAttribute("vehicule"); %>


  <%-- A supp après --%>
  <form action="Autre_Servlet" method="post">
		
			<input type="text" name="marque" placeholder="BMW"><br>
			<input type="text" name="modele" placeholder="118i"><br>
      <%-- <input type="text" name="options" placeholder="option"><br> --%>
      <select type="text" name="options" multiple>
        <option type="radio" value="volvo">Volvo</option>
        <option value="saab">Saab</option>
        <option value="renault">Renault</option>
      </select><br>
			<input type="number" name="prix" placeholder="10000€"><br>
			<input type="number" name="quantite" placeholder="Nb d'exemplaires"><br>
			<input type="text" name="couleur" placeholder="Noire"><br>
      <input type="text" name="description" placeholder="Belle?"><br>
			<button type="submit">Add Autre</button>
		
		</form>
  <%-- voila --%>


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
        <li class="list-group-item">Prix : <%= ve.getPrix() %> €</li>

        <% if(ve.getOptions().size() != 0){%>
        <li class="list-group-item">Options : <ul><% for(Option o : ve.getOptions()){%>
          <li><%= o.getName() %></li> <%}
        %></ul>
        </li>
        <%}%>

      </ul>
      <div class="card-body">
        <a href="index.html" class="card-link">Retour à l'accueil</a>
        <a href="#" class="card-link">Mettre dans le panier</a>
      </div>
    </div>
	</div>

</body>
</html>