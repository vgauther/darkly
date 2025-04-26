Une faille d'upload de fichier permet à un attaquant de téléverser un fichier malveillant, comme un webshell PHP, qui lui donne ensuite un accès à distance pour exécuter des commandes arbitraires sur le serveur.

Dans notre cas, le server filtre afin que l'on ne puisse pas envoyé de fichier php

Le filtre en place, s'assure que le content-type du fichier ne soit pas celui d'un fichier php

On intercept et modifie la request afin d'y insérer le content-type d'une image : image/jpeg

Et on obtient le flag

**Comment Eviter**

Ce n'est pas tout d'obliger l'utilisateur à envoyer un jpeg, il faut aussi le vérifier dans le back.
