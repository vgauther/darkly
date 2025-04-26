Comme expliqué dans la vidéo, il faut vérifier ce qui se passe au niveau des cookies.

On a donc téléchargé une extension de lecture / modification de cookies.

On voit qu'il y a un cookie unique, cookie qui se nomme très subtilement I_am_admin.

La valeur de ce cookie nous fait penser à un message encodé 68934a3e9455fa72420237eb05902327.

Comme nous venions de faire snowcrash nous avons utilisé le détecteur de chiffrement de dcode.fr.

Il nous indique MD5 comme chiffrement, on décode et ça affiche 'false'. Assez logiquement, nous avons décidé d'encoder 'true' en MD5 et de remplacer l'ancienne valeur.

On recharge la page et le flag apparait !

**Comment Eviter**

Il faut juste ne pas stocker des données sensibles dans les cookies.

Il ne faut pas gerer les roles / permissions à travers les cookies mais plutot à travers un session id qui retrouvera les informations de l'utilisateur.

Il faut également utiliser les flags de sécurité des cookies. (http-only, same-site, secure)
