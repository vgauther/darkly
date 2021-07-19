Après avoir fait un nmap sur l'adresse ip on trouve un dossier .hidden qui contient des dossiers.

En cherchant un peut à l'aveuglette, il y a des dossiers dans des dossiers à "L'infini" dans chaque dossier il y a un readme.txt, on suppose que que le flag est dedans.

J'ai donc fait un script qui va chercher dans chaque readme s'il trouve un flag, trouvant ça long j'en ai ait un qui parse depuis la fin, après un peu d'attente on trouve le flag.

**Comment Eviter**

On peut l'éviter avec une meilleure gestion du robot.txt, une meilleur gestion des routes, une meilleur configuration du serveur web qui renverrais une 403.
