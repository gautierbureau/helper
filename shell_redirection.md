Les redirections sont toujours traitées de gauche à droite.

``` bash
$> commande 1> fichier 2>&1
$> commande 2> fichier 1>&2
```

La syntaxe `1>resu 2>&1` n’est pas équivalente à `2>&1 1>resu`. Dans le second cas, la sortie d’erreur standard est redirigée vers la sortie standard, c’est-à-dire vers le terminal. Puis la sortie standard est associée au fichier resu. Conclusion : les messages d’erreur sont dirigés vers le terminal et les messages résultat dans le fichier resu.

Fermer stdout et stderr
``` bash
$> command 2>-
$> command 1>-
```

[https://wiki.bash-hackers.org/howto/redirection_tutorial](https://wiki.bash-hackers.org/howto/redirection_tutorial)

## echo stderr

``` bash
$> >&2 echo "error"
```

Dans une substitution de commande on recupere ce qui est envoye sur stdout et non stderr

``` bash
$> toto=$(>&2 echo "error";echo "normal")
$> toto=$(>&2 echo "error";echo "normal") 2> /dev/null
$> toto=$(>&2 echo "error";echo "normal") 1> fic1 2> fic2
$> toto=$(>&2 echo "error";echo "normal" 1>&2);echo toto: $toto
$> toto=$(2>&1 >&2 echo "error";echo "normal" 1>&2);echo toto: $toto
```

## exec

exec dans un script permet de rediriger toutes les sorties du script vers un fichier