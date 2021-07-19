Sur la page de connexion, j'ai d'abord penser a une injection SQL, mais cela ne fonctionnais pas.

Après réflexion, je me suis dit que j'allais brutforce, j'ai chercher les mots de passe les plus utilisés.
Sur ce wikipedia j'ai pris toute la liste des "SplashData" https://fr.wikipedia.org/wiki/Liste_des_mots_de_passe_les_plus_courants
J'en ai fait un dictionnaire en supprimant les doublons.

J'ai ensuite fait un script en bash qui test tout les mots de passe sur la requête POST.
Après avoir passer le script, on trouve le mot de passe `shadow` du compte `admin` qui dévoile le flag.

**Comment Eviter**

Protéger les formulaires avec des Captcha pour éviter les brutforces et mettre en place des politiques de mots avec un nombre de caractères minimum, des majuscules et minuscules et des caractères spéciaux.
