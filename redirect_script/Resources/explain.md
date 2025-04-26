En inspectant les réseaux sociaux dans le footer, nous avons remarqué que la redirection était assez inhabituel.

http://192.168.1.23/index.php?page=redirect&site=instagram

Or on peux normalement s'attendre à avoir le lien direct. Nous avons donc essayé de modifier la valeur de la redirection.

http://192.168.1.23/index.php?page=redirect&site=test

Et ça a marché.

Nous avons eu un flag.

On appelle cela un open redirect. Idéal pour faire du phising

**Comment Eviter**

Il semble que le site utilise une méthode GET pour faire le redirection. Ce qui n'est sans doute pas indispensable.
Mettre un simple lien aurait suffit.
