En testant le système de navigation en faisant

http://192.168.1.22/index.php?page=test

Le paramètre ?page= est vulnerable à du path traversal 

A partir de la valeur de page, le router va générer dynamiquement l'url auquel nous allons accéder 

A l'aide de la chaine de charactere ../
On revient au dossier précédent

On en concatène suffisament à la suite pour atteindre la racine du server

Et on affiche le fichier contenant les mots de passe du server

```
../../../../../../../../../../etc/passwd
```
et en faisant ça nous avons eu un flag

**Comment Eviter**

Au vu du fonctionnement du site, une solution simplement serait de limiter les caractères utilisables pour l'utilisation de la clé page.
