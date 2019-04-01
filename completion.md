## Bash completion

The most important thing is COMPREPLY array, whatever way you find ton get it right and return 0 from teh function would be sufficient to generate the completion.

``` bash
local cur prev options commands
COMPREPLY=()
cur="${COMP_WORDS[COMP_CWORD]}"
prev="${COMP_WORDS[COMP_CWORD-1]}"
COMPREPLY=($(compgen -W "--op1 --op2 --op3" -- $cur))
_filedir '@(extension1|extension2)'
_filedir -d
compopt -o nospace
COMPREPLY=($(compgen -S\= -W "--dir" -- ${cur}))
complete -F _function_name command_name
```

``` bash
echo -e "\nprev = $prev, cur = $cur\n"
```

[compgen options](https://unix.stackexchange.com/questions/151118/understand-compgen-builtin-command)

[bash completion builtins](https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion-Builtins.html)

[bash-completion](https://github.com/scop/bash-completion)

Tutos:
- [https://blog.heckel.xyz/2015/03/24/bash-completion-with-sub-commands-and-dynamic-options/](https://blog.heckel.xyz/2015/03/24/bash-completion-with-sub-commands-and-dynamic-options/)
- [https://www.nebulousresearch.org/other/bashcompletion](https://www.nebulousresearch.org/other/bashcompletion)
- [https://unix.stackexchange.com/questions/108423/how-to-add-pattern-to-bash-completion-for-unzip](https://unix.stackexchange.com/questions/108423/how-to-add-pattern-to-bash-completion-for-unzip)
- [https://askubuntu.com/questions/68175/how-to-create-script-with-auto-complete](https://askubuntu.com/questions/68175/how-to-create-script-with-auto-complete)
- [https://iridakos.com/tutorials/2018/03/01/bash-programmable-completion-tutorial.html](https://iridakos.com/tutorials/2018/03/01/bash-programmable-completion-tutorial.html)

## Zsh completion

Variables

|Variable|Description|
|---------|-----------|
|$words|Les mots déjà entrés par l'utilisateur|
|$CURRENT|L'index, dans $words, du mot que l'utilisateur essaie de compléter (c'est $#words sauf si l'utilisateur est revenu en arrière)|
|$curcontext|Une chaîne de caractères, décrivant le contexte courant|
|$state||
|$state_descr||
|context||
|line||
|opt_args||

local context state state_descr line
typeset -A opt_args

Reload completion: it is a mixed between what commands has been marked as completable by zsh with the `compdef` keyword at the beginning of a file in the `$fpath` and if you use a function to complete the command how zsh loaded the function in memory. `zcompdump` contains the command loaded into memory for completion and the function associated to the completion. `unfunction` and `autoload` enables to reload a function definition after a change.
``` bash
$> unfunction _function_name;
$> autoload -U _function_name
$> rm -f ~/.zcompdump*
$> compinit;
```

Mutually exclusive options, you put a list before the option [ref1](http://www.linux-mag.com/id/1106/) [ref1](https://blog.kloetzl.info/how-to-write-a-zsh-completion/):
``` bash
(-l -c -r)-x[use default justification of font]
```

Or you could use option groups and mutually exclusive options, [ref](https://tar-jx.bz/notes/zsh-completion.html) and in the manual look for `Specifying Multiple Sets of Arguments`.
``` bash
_arguments \
  - set1 \
    "-h[display help and exit]:help" \
  - set2 \
    "-m[model name]:model name:_files -g '*.mo'"
```

[reference](http://zsh.sourceforge.net/Doc/Release/Functions.html) on `autoload`.

[zsh-completions HOWTO](https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org)

[Zsh reference manual](http://zsh.sourceforge.net/Doc/Release/Completion-System.html)

[Completion builtin commands](http://zsh.sourceforge.net/Doc/Release/Completion-Widgets.html#Completion-Builtin-Commands)

Tutos:
- [https://wikimatze.de/writing-zsh-completion-for-padrino/](https://wikimatze.de/writing-zsh-completion-for-padrino/)
- [http://www.linux-mag.com/id/1106/](http://www.linux-mag.com/id/1106/)
- [https://tar-jx.bz/notes/zsh-completion.html](https://tar-jx.bz/notes/zsh-completion.html)
- [https://blog.kloetzl.info/how-to-write-a-zsh-completion/](https://blog.kloetzl.info/how-to-write-a-zsh-completion/)
- [https://mads-hartmann.com/2017/08/06/writing-zsh-completion-scripts.html](https://mads-hartmann.com/2017/08/06/writing-zsh-completion-scripts.html)
- [https://askql.wordpress.com/2011/01/11/zsh-writing-own-completion/](https://askql.wordpress.com/2011/01/11/zsh-writing-own-completion/)
