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
	
	<%= ve.getMarque() %>
	<%= ve.getDescription() %>
	<%= ve.getId() %>
	<%= ve.getModele() %>
	<%= ve.getPrix() %>
	
	
    <form action="Vehicule_Servlet" method="get">
      <div id="addPage" class="form-group">
        <button type="submit" class="btn btn-primary">Vehicule servlet access</button>
      </div>
    </form>

</body>
</html>