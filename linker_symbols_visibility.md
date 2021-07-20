https://developer.ibm.com/articles/au-aix-symbol-visibility/

https://www.lurklurk.org/linkers/linkers.html

https://www.mikeash.com/pyblog/friday-qa-2009-11-06-linking-and-install-names.html

-fvisibility=hidden : par défaut tout est en public donc nm -CD et nm -C sont équivalents ie la librarie expose ses symboles au linker pour les utiliser... mais c'est pas forcément utile...
-fvisibility-inlines-hidden en est un autre

https://stackoverflow.com/questions/52719364/how-to-use-the-attribute-visibilitydefault

__attribute__ ((visibility ("default"))) : permet de régler fonction par fonction ce problème, en fait ça revient un peu au meme principe que __declspec(dllexport) et __declspec(dllimport)

https://gcc.gnu.org/wiki/Visibility

``` cpp
#if defined _WIN32 || defined __CYGWIN__
  #ifdef BUILDING_DLL
    #ifdef __GNUC__
      #define DLL_PUBLIC __attribute__ ((dllexport))
    #else
      #define DLL_PUBLIC __declspec(dllexport) // Note: actually gcc seems to also supports this syntax.
    #endif
  #else
    #ifdef __GNUC__
      #define DLL_PUBLIC __attribute__ ((dllimport))
    #else
      #define DLL_PUBLIC __declspec(dllimport) // Note: actually gcc seems to also supports this syntax.
    #endif
  #endif
  #define DLL_LOCAL
#else
  #if __GNUC__ >= 4
    #define DLL_PUBLIC __attribute__ ((visibility ("default")))
    #define DLL_LOCAL  __attribute__ ((visibility ("hidden")))
  #else
    #define DLL_PUBLIC
    #define DLL_LOCAL
  #endif
#endif

extern "C" DLL_PUBLIC void function(int a);
class DLL_PUBLIC SomeClass
{
   int c;
   DLL_LOCAL void privateMethod();  // Only for use within this DSO
public:
   Person(int _c) : c(_c) { }
   static void foo(int a);
};
```
