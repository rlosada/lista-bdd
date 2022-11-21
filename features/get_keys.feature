# language: es
# encoding: utf-8

Característica: Recuperar claves

Escenario: Agregar clave menor a todas y recuperarlas ordenadas ascendente
    Dado una lista con los siguientes elementos
    | clave2  | 2 | clave4 | 4 | clave1 | 1 |
    Cuando se agrega la pareja  { <clave> : <valor> }
    Entonces la lista de claves recuperadas es devuelta en orden ascendente
Ejemplos:
    | clave    | valor |
    | "clave0" |  0    | 
    | "clave3" |  3    |
    | "clave5" |  5    |   