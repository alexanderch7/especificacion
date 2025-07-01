Feature: HU016-RF - Comentar en un Reporte de Incidente 
    Como James (universitario), quiero poder comentar en un reporte de incidente, para añadir información o corroborar el hecho. 

    Scenario: Agregar un comentario válido
        Given el usuario visualiza el reporte
        When escribe "Vi lo mismo hace 5 min" presiona "Publicar"
        Then el sistema guarda el comentario y aumenta el contador de comentarios del reporte

        Examples:
            | Incidente | Comentario              |
            | 200       | Vi lo mismo hace 5 min  | 

    
    Scenario: Intentar publicar comentario vacío
        Given el usuario está en la sección de comentarios
        When presiona "Publicar" sin escribir texto
        Then la app muestra "El comentario no puede estar vacío"

        Examples:
            | Incidente | 
            | 201       |


    Scenario: Eliminar un comentario propio
        Given el usuario publicó un comentario en el reporte
        When presiona "Eliminar comentario"
        Then el sistema borra el comentario y actualiza la lista

        Examples:
            | Incidente |
            | 202       |
             