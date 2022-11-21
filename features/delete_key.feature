# language: es
# encoding: utf-8

Característica: Borrar entradas

Escenario: Borrar entrada en lista vacia
    Dado una nueva lista
    Cuando se borra la entrada con clave "uno"
    Entonces retorna false
    Y el valor recuperado para "uno" es NaN

Escenario: Borrar entrada con clave que existe
    Dado una lista con los siguientes elementos
    | uno | 1 | dos | 2 |
    Cuando se borra la entrada con clave "dos"
    Entonces retorna true
    Y el valor recuperado para "dos" es NaN

Escenario: Borrar entrada con clave inexistente
    Dado una lista con los siguientes elementos
    | uno | 1 | dos | 2 |
    Cuando se borra la entrada con clave "tres"
    Entonces retorna false
    Y el valor recuperado para "tres" es NaN    

