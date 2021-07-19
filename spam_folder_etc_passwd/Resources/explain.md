En testant le système de navigation en faisant

http://192.168.1.22/index.php?page=test

Le site nous repond : Wtf ?

On se doute qu'il y a quelque chose à faire puis nous avons testé avec ../

et en remontant, cela nous indique Wrong..

En faisant ça plusieurs fois le site fini par nous dire

You can DO it !!!  :]

et donc on se doute qu'il a quelque chose à faire, on se demande alors si on ne pourrait pas récupérer des infos sensibles comme le passwd.

http://192.168.1.22/index.php?page=../../../../../../../../etc/passwd

et en faisant ça nous avons eu un flag

**Comment Eviter**

Au vu du fonctionnement du site, une solution simplement serait de limiter les caractères utilisables pour l'utilisation de la clé page.
