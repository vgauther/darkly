Sur la page de recherche de membre quand on recherche autre chose qu'un id, on voit une erreur SQL on comprend qu'il y a une injection SQL a faire

Après recherche on trouve `1 UNION req` pour faire une injection ou req est notre requête perso

Dans une base de données mariaDB, il y a une table `information_schema` qui répertorie les tables et colonnes on fait donc une recherche la dessus

```SQL
	1 UNION SELECT table_name, column_name FROM information_schema.columns
```

Dans cette table, on trouve que la table users contient un champ user_id, first_name, last_name, town, country, planet, Commentaire, countersign

On extrait l'intégralité du contenu, 2 colones par 2 et dans commentaire et countersign: on a un commentaire à un message codé de l'utilisateur flag.

```SQL
	1 UNION SELECT Commentaire, countersign FROM users
```

On va sur https://md5decrypt.net : (md5):5ff9d0165b4f92b14994e5c685cdce28 => FortyTwo => fortytwo => (sha256)fortytwo => the flag

**Comment Eviter**

Protéger les requêtes en faisant des requêtes préparées. Et il ne faut pas afficher les erreurs.
