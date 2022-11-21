# language: es
# encoding: utf-8

Característica: Claves invalidas

Escenario: Intentar agregar un elemento con clave nula
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la entrada con clave nula y valor 34 
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna false

Escenario: Intentar agregar un elemento con clave string vacio
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la entrada con clave string vacio y valor 34 
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna false

Escenario: Intentar agregar un elemento con clave que no es string
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la entrada con clave que no es string y valor 34 
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna false    