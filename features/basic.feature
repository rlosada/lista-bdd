# language: es
# encoding: utf-8

Característica: Manipulacion basica

Escenario: Crear una lista nueva
    Dado una nueva lista
    Entonces la lista tiene 0 elemento almacenado

Escenario: Agregar un elemento a una nueva lista
    Dado una nueva lista
    Cuando se agrega la pareja { "clave" : "valor" }
    Entonces la lista tiene 1 elemento almacenado    
    Y retorna true

Escenario: Agregar un elemento a una lista con elementos
    Dado una lista con los siguientes elementos
    | "uno" | 1 |
    Cuando se agrega la pareja { "dos" : 2 }
    Entonces la lista tiene 2 elementos almacenados 

Escenario: Agregar un elemento a una lista vacia
    Dado una nueva lista
    Cuando se agrega la pareja { "clave" : "valor" }
    Entonces la lista tiene 1 elemento almacenado

Escenario: Agregar un elemento a una lista con elementos
    Dado una lista con los siguientes elementos
    | "uno"  | 1 | "dos"  | 2 | "tres" | 3 |
    Cuando se agrega la pareja { "cuatro" : 4 }
    Entonces la lista tiene 4 elementos almacenados 
