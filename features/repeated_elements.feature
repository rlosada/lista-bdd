# language: es
# encoding: utf-8

Característica: Rechazar elementos repetidos

Escenario: Intentar agregar un elemento repetido
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se agrega la pareja  { <clave> : <valor> }
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna false
Ejemplos:
    | clave | valor |
    | "uno" | 1     | 
    | "dos" | 2     |
    | "tres"| 3     |
