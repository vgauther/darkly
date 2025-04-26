Un XSS stocké (stored XSS) se produit lorsqu'un attaquant enregistre du code malveillant directement dans la base de données ou sur le serveur d'un site, et que ce code est ensuite affiché aux utilisateurs sans être filtré, provoquant l'exécution automatique de scripts malveillants.
On tente alors d'utiliser un payload simple : <script>alert(1)</script>
Il ne fonctionne pas et les balises <script> sont trim lors de l'affichage 
On imagine donc qu'il y a un filtre à evité
< script >alert(1)< / script >
On obtient le flag 

**Comment eviter**

Sur tous les champs texte utilisables par l'utilisateur il faut utiliser des fonction qui permette d'échapper les caractères spéciaux comme `htmlspecialchar()` en PHP
