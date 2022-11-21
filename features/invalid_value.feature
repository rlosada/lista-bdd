# language: es
# encoding: utf-8

Característica: Valores invalidas

Escenario: Intentar agregar un elemento con valor null
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la entrada  con clave string y valor null
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna false

Escenario: Intentar agregar un elemento con valor undefined
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la entrada  con clave string y valor undefined
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna false