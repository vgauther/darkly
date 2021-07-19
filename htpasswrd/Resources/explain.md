En faisant nmap sur le site, on voit que dans le robots.txt, il y a 2 disallowed entries.

Naturellement, nous avons été voir ce qui s'y trouvé.

Dans /whatever, il y un fichier htpasswd dans lequel se trouve :

```
root:8621ffdbc5698829397d97767ac13db3
```

On en déduit qu'il s'agit d'un mot de passe.

On essaye de se connecter sur le login avec mais ça ne fonctionne pas.

Puis on décide de le mettre dans le détecteur de chiffrement de dcode.fr.

dcode.fr nous suggère le MD5, en décodant, on trouve le mot 'dragon'.

On essaye dans la page login mais ça ne marche pas.

On regarde quelle sont les usages pour htpasswd. Nous avons trouvé que généralement c'était utilisé pour gérer des plateformes d'administration type PhpMyAdmin. On a donc essaye différente url. Puis nous sommes tombés sur /admin.

Nous nous sommes connectés et nous avons eu le flag.

**Comment Eviter**

Là, c'est sans doute une histoire de permissions concrètement, il ne faut pas que le mot de passe administrateur soit accessible publiquement.
