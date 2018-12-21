# DevComposants

##### @ISTV @TNSI @M2 @Developpement par Composants
##### @GuillaumeBouchez @BlorZ



### Application Java développée avec un serveur Wildfly gérant une vente de véhicules.

**Wildfly + EJB.md** contient un tutoriel pour setup le projet.<br>

**Site_TP** contient le projet EJB.<br>

**ConvertMonnaie** contient l'implémentation de la fonction lambda.<br>

**Entities** contient les entités.<br>

**Interface_Web** contient la partie Front et les Servlet.<br>

**EAR** contient le projet EAR permettant de déploiment des 3 autres projets sur le serveur Wildfly.



### Partie Frontend

Les fonctions implémentées sont :

-  La création d'un utilisateur
-  La connexion d'un utilisateur
-  Le guidage sur les différentes pages Voiture - Moto - Autres véhicules
-  La consultation de la liste des différents véhicules en vente sur le site
-  La consultation des détails concernant un véhicule en particulier
-  La possibilité de convertir le prix du véhicule dans 4 devises en utilisant une fonction lambda
-  La possibilité d'ajouter un véhicule dans le panier UNIQUEMENT si l'utilisateur est connecté; dans le cas contraire, un message d'erreur s'affiche et invite l'utilisateur à se connecter ou à créer un compte si ce n'est pas déjà fait
-  La possibilité pour un utilisateur de consulter la page "Mon espace", lui permettant de 
    créer un nouveau véhicule (Voiture, moto, autre véhicule) et de voir son panier.





### Partie Backend

Les fonctions implémentées sont celles associées au frontend en place.

Nous gérons donc l'inscription et la connexion utilisateur ainsi que les sessions liées.
Les véhicules par type ainsi que leur inscription et suppression de la BDD.

Des méthodes ont été développées pour la gestion des paniers mais n'ont pas abouti, en effet l'ajout d'un produit dans le panier n'est pas fonctionnel. Les développements sont néanmoins présents dans le projet.

Le plus long dans ce projet ayant été la mise en place de la configuration de Wildfly, des divers projets et notamment de la réalisation d'un script Docker permettant de *dockeriser* l'application ; problème causé par la BDD H2 qu'on ne voulait pas embarquée mais bien en mode server.



#### Spécificité de la fonction Lambda

La clé d'accès pour utiliser la fonction lambda se désactive toutes les 10 minutes environ, il est donc impossible de la laisser active pour correction...
Pour pouvoir la tester, il faudra mettre la fonction Lambda en place sur un compte accessible afin de récupérer la clé et de pouvoir paramétrer la connexion à AWS avec Eclipse.





### Différents liens utiles

Lien du dépôt GitHub : https://github.com/Whanyerak/DevComposants.

Lien du dépôt DockerHub : https://hub.docker.com/r/blorz/tp_ejb.