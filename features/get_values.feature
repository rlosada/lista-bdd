# language: es
# encoding: utf-8

Característica: Recuperar valores

Escenario: Recuperar un elemento de una lista vacia
    Dado una nueva lista
    Entonces la lista tiene 0 elemento almacenado  
    Y el valor recuperado para "cinco" es NaN

Escenario: Agregar un elemento a una nueva lista y recuperarlo
    Dado una nueva lista
    Cuando se agrega la pareja { "clave" : 5 }
    Entonces la lista tiene 1 elemento almacenado    
    Y el valor recuperado para "clave" es 5

Escenario: Agregar elementos y recuperarlos
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la pareja  { <clave> : <valor> }
    Entonces la lista tiene 3 elementos almacenados 
    Y el valor recuperado para <clave> es <valor>
Ejemplos:
    | clave   | valor |
    | "uno"   | 1     | 
    | "dos"   | 2     |
    | "tres"  | 3     |    
