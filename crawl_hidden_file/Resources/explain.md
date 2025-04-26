On a regardé robots.txt. Un fichier robots.txt indique aux robots d'exploration d'un moteur de recherche les URL auxquelles il peut accéder sur un site. On voit qu'il y a 2 dossiers whatever et .hidden. On s'interesse au .hidden. 

En cherchant un peut à l'aveuglette, il y a des dossiers dans des dossiers à "L'infini" dans chaque dossier il y a un readme.txt, on suppose que que le flag est dedans.

J'ai donc fait un script qui va chercher dans chaque readme s'il trouve un flag, trouvant ça long j'en ai ait un qui parse depuis la fin, après un peu d'attente on trouve le flag.

**Comment Eviter**

On peut l'éviter avec une meilleur gestion des routes, une meilleur configuration du serveur web qui renverrais une 403. Un dossier .hidden n'est pas sensé être exposé. Si ce dossier hidden doit réelement être là, il faut mettre en place une restriction par ip.
