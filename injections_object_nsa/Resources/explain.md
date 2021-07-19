En cliquant sur l'image de la NSA en page d'accueil, on arrive sur une page qui prend un argument media.

On inspecte l'élément et on voit qu'il y a une balise object qui prend en argument data. On trouve qu'on peut mettre des scripts dans ce data pour qu'ils s'exécutent.

Puis nous avons compris que le data est "rempli" par l'argument src de l'url.

Nous avons essayé de mettre en src javascript:alert(1) mais notre navigateur nous enlevé le 'javascript'

Donc nous avons utilisé une forme "encodée" data:text/html;base64,PHNjcmlwdD5hbGVydCgiWFNTIik7PC9zY3JpcHQ+

et là, en chargeant la page nous avons eu le flag.

src :
https://book.hacktricks.xyz/pentesting-web/xss-cross-site-scripting#places-where-you-can-inject-these-protocols

**Comment Eviter**

Encore une fois, il s'agirait de limiter les caractères utilisables.
