Ce paramètre src est réutilisé directement dans un élément HTML <object>, dans le code source, on peut voir que l'attribut data prend la valeur de src

<object data="VALEUR_DE_SRC"></object> 
L'élément HTML <object> représente une ressource externe qui peut être interprétée comme une image, un contexte de navigation imbriqué ou une ressource à traiter comme un plugin.
Il est connu qu'il possible d'exécuter du code javascript en l'injectant dans la variable.

On appelle ça une faille XSS (Cross site scripting) 
On injecte du code javascript pour éxécuter une alert dans le navigateur
<script>alert("XSS")</script>
Cela ne fonctionne pas, apres quelques recherche on tombe sur ce forum
https://security.stackexchange.com/questions/258306/how-is-object-tag-data-uri-xss-actually-xss

Afin d'éviter d'éventuel filtre, on encode le payload en base64
data:text/html;base64,PHNjcmlwdD5hbGVydCgiWFNTIik7PC9zY3JpcHQ+

Et on obtient le flag
