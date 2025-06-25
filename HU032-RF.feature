Feature: HU032-RF - Calificar la Respuesta de Autoridad
    Como un usuario, quiero calificar la respuesta de las autoridades
    para proporcionar retroalimentación sobre su gestión.

    Scenario Outline: Dar una calificación positiva a una gestión efectiva
        Given un reporte del usuario ha sido marcado como "Resuelto" y el problema fue solucionado
        When el usuario abre el reporte y selecciona una calificación de <Calificacion> estrellas
        Then el sistema debe registrar la calificación y mostrar el mensaje "<Mensaje>".
        
        Examples:
        | Calificacion | Mensaje                        |
        | 5            | "Gracias por tu feedback"      |

    Scenario Outline: Dar una calificación negativa con comentario
        Given un reporte de "<Incidente>" fue "Resuelto" pero el problema persiste
        When el usuario da <Calificacion> estrella y añade el comentario "<ComentarioNegativo>"
        Then el sistema debe registrar la calificación y el comentario para revisión.
        
        Examples:
        | Incidente      | Calificacion | ComentarioNegativo        |
        | Ruido excesivo | 1            | "El ruido nunca se detuvo"|

    Scenario: Intentar calificar un reporte no resuelto
        Given el usuario abre el detalle de un reporte con estado "<Estado>"
        Then la opción para calificar debe estar deshabilitada.
        
        Examples:
        | Estado      |
        | En Revisión |
