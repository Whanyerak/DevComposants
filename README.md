# DevComposants

##### @ISTV @TNSI @M2 @Developpement par Composants
##### @GuillaumeBouchez @BlorZ

### Application Java développée avec un serveur Wildfly gérant une vente de véhicules.

**Wildfly + EJB.md** contient un tutoriel pour setup le projet.

**Site_TP** contient le projet EJB.<br>
**Entities** contient les entités.<br>
**Interface_Web** contient la partie Front et les Servlet.<br>
**EAR** contient le projet EAR permettant de déploiment des 3 autres projets sur le serveur Wildfly.

#####Partie front : 

- les fonctions implémentées sont :
  -  La création d'un utilisateur
  - La connexion d'un utilisateur
  - Le guidage sur les différentes pages Voiture - Moto - Autres véhicules
  - La consultation de la liste des différents véhicules en vente sur le site
  - La consultation des détails concernant un véhicule en particulier
  - La possibilité de convertir le prix du véhicule dans 4 devises en utilisant une fonction lambda
  - La possibilité d'ajouter un véhicule dans le panier UNIQUEMENT si l'utilisateur est connecté; dans le cas contraire, un message d'erreur s'affiche et invite l'utilisateur à se connecter ou à créer un compte si ce n'est pas déjà fait
  - La possibilité pour un utilisateur de consulter la page "Mon espace", lui permettant de 
créer un nouveau véhicule (Voiture, moto, autre véhicule) et de voir son panier.
