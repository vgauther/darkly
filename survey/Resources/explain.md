Ici, en allant sur la page survey et inspectant celle-ci, on a comprit que les différents input enclenchaient une requête POST pour ajouter une note entre 1 et 10. L'objectif serait de venir fausser les notes.

On intercepte la requête et modifie la valeur de l'input et en s'executant le flag est apparu.

**Comment Eviter**

Il faudrait vérifier les valeurs envoyées dans le back pour être sur qu'il n'y ait pas de modification depuis le html.
