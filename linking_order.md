If object or library AA needs a symbol from library BB, then AA should come before library BB in the command-line invocation of the linker.

When linking object files (static libraries) into an executable, the order in which you give the libraries matters. For simple scenarios where there are no cyclic references, the dependent library should come on the left, and the library which provides said dependency should come on the right. Take a look at this SO question to see a diagrammatic view of this, and also to see how cyclic dependencies can be resolved.
