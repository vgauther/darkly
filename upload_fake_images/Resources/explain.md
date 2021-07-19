En arrivant sur la page add image, on se rend compte que il y a la possibilité d'upload une petite image en jpeg.

Pour nous l'objectif ici était pouvoir upload un fichier d'un autre type sur le serveur.

Comme nous avions déjà utilisé Postman, nous avons décidé de faire une requêtes POST pour essayer d'outrepasser la vérification.

Nous avons donc créer une nouvelle requête avec en paramètre la key : page et la value upload.

Ensuite nous avons choisis form-data pour simuler le formulaire dans Postman nous avons rempli les informations suivantes:

Et premier, nous avons mis la clé uploaded référence à l'input du formulaire. Nous avons ensuite sélectionné un fichier php comme value.

En second, nous avons mis la clé Upload avec la valeur Upload qui valide que le bouton ait été utilisé.

Enfin après quelques recherches nous avons trouvé une option pour préciser le type de nos "values".

Nous avons donc ajouté dans le content type de l'input du fichier la valeur 'image/jpeg'

En envoyant la requête, le serveur nous retourne une page sur laquelle on peut lire le flag.

**Comment Eviter**

Ce n'est pas tout d'obliger l'utilisateur à envoyer un jpeg, il faut aussi le vérifier dans le back.
