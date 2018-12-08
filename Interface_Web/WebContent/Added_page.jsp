<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
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
    <link rel="stylesheet" href="./css/style.css" />
    <% Voiture_entity v = (Voiture_entity)request.getAttribute("v"); %>
    <% Moto_entity m = (Moto_entity)request.getAttribute("m"); %>
    <%-- <title> <%= m.getModele() %> </title> --%>
  </head>
  <body>
    <%-- <%= m.getMarque() %> <%= m.getModele() %> 
    <%= m.getPrix() %> --%>
    <%-- <%= v.getMarque() %> <%= v.getModele() %>
    <%= v.getPrix() %> <%= v.getCouleur() %> --%>

    <form action="Voiture_Servlet" method="get">
      <div id="addPage" class="form-group">
        <button type="submit" class="btn btn-primary">Access voiture</button>
      </div>
    </form>
  </body>
</html>
