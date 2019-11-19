If object or library AA needs a symbol from library BB, then AA should come before library BB in the command-line invocation of the linker.

When linking object files (static libraries) into an executable, the order in which you give the libraries matters. For simple scenarios where there are no cyclic references, the dependent library should come on the left, and the library which provides said dependency should come on the right. Take a look at this [SO](https://stackoverflow.com/questions/45135/why-does-the-order-in-which-libraries-are-linked-sometimes-cause-errors-in-gcc) question to see a diagrammatic view of this, and also to see how cyclic dependencies can be resolved.

`gcc -la -lb -la`

gcc cherche les libs de gauche à droite, donc si a on a plusieurs occurences de la meme seul la position de la première (la plus à gauche) compte. Ensuite il regarde s'il a des symboles indéfinis et les notes, il va ensuite cherche dans les librairies qui viennent ensuite (donc plus vers la droite) sur la ligne de commande, s'il trouve la résolution ça sera ok sinon erreur. Donc si la librairie qui résoud un symbole se trouve avant ça ne marche pas. Il faut que la librairie qui résoud le symbole se trouve après ou plus à droite dans la ligne de commande.

Example: libxml dépend de xerces
- Working

``` bash
/bin/g++ Test.cpp.o -o Test libXMLSAXParser.a libxerces-c.a
```

- Not working

``` bash
/bin/g++ Test.cpp.o -o Test libxerces-c.a libXMLSAXParser.a
```

The GNU ld linker is a so-called smart linker. It will keep track of the functions used by preceding static libraries, permanently tossing out those functions that are not used from its lookup tables. The result is that if you link a static library too early, then the functions in that library are no longer available to static libraries later on the link line.

https://people.cs.pitt.edu/~xianeizhang/notes/Linking.html

https://eli.thegreenplace.net/2013/07/09/library-order-in-static-linking
