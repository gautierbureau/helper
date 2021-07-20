explicit (full) template specialization:
``` cpp
template<>
class N::Y<double> { /*...*/ }; // OK: specialization in same namespace
```

explicit instantiation:
``` cpp
template class N::Y<char*>;      // OK:
```
Explicit instantiation has no effect if an explicit specialization appeared before for the same set of template arguments.
