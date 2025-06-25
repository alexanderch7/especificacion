Feature: HU031-RF - Ver Respuesta de Autoridad a un Reporte
    Como un usuario, quiero ver la respuesta de las autoridades a mis reportes
    para saber si fueron atendidos.

    Scenario Outline: Visualizar actualización de estado de un reporte
        Given el usuario ha enviado un reporte con estado inicial "<EstadoInicial>"
        When la autoridad a cargo actualiza el estado a "<NuevoEstado>"
        Then el usuario debe ver el estado actualizado en el detalle del reporte.
        
        Examples:
        | EstadoInicial | NuevoEstado   |
        | Enviado       | En Revisión   |

    Scenario Outline: Ver un comentario de una autoridad en el reporte
        Given el usuario ha enviado un reporte sobre un <Incidente>
        When un agente añade el comentario "<ComentarioAutoridad>"
        Then el comentario debe ser visible en el detalle del reporte.
        
        Examples:
        | Incidente        | ComentarioAutoridad             |
        | poste de luz caído | "Equipo de emergencia en camino"  |

    Scenario Outline: Recibir notificación cuando el reporte es resuelto
        Given un reporte del usuario se encuentra en estado "<EstadoPrevio>"
        When la autoridad lo marca como "<EstadoFinal>"
        Then el usuario debe recibir una notificación push que diga "¡Buenas noticias! El problema que reportaste ha sido resuelto.".
        
        Examples:
        | EstadoPrevio | EstadoFinal |
        | En Revisión  | Resuelto    |
