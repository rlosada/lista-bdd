# language: es
# encoding: utf-8

Característica: Actualizacion de valores

Escenario: Actualizar valor de clave inexistente
    Dado una nueva lista
    Cuando se actualiza la pareja  { "uno" : 1 }
    Entonces retorna false

Escenario: Actualizar valores asociados a claves
    Dado una lista con los siguientes elementos
    | uno  | 1 | dos | 2 | tres | 3 |
    Cuando se actualiza la pareja  { <clave> : <valor> }
    Entonces la lista tiene 3 elementos almacenados 
    Y retorna true
Ejemplos:
    | clave   | valor |
    | "uno"   | 5     | 
    | "dos"   | 6     |
    | "tres"  | 7     |  