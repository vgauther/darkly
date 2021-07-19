Lorsque l'on clique sur le lien de copyright, on arrive sur une page qui nous donne des informations sur l'albatros avec une musique en "fond".

En inspectant la page, on découvre le man epitech mais surtout 2 informations.

Let's use this browser : "ft_bornToSec". It will help you a lot.

You must cumming from : "https://www.nsa.gov/" to go to the next step

Avec nos quelques recherches sur les headers, nous avons fini par comprendre que ces deux phrases étaient des indications pour le User-Agent et le Referer.

Il nous suffit alors de faire une requête en utilisant Postman par exemple en modifiant les éléments du header.

En retour de cette requête, nous avons une page de avec le flag.

**Comment Eviter**

En soit, ce n'est pas vraiment une faille, il faut juste ne pas mettre des informations sensibles dans le front même en commentaire...
