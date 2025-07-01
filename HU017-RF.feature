Feature: HU017-RF - Validar/Confirmar un Reporte 
    Como un usuario (Anali), quiero poder "confirmar" o "validar" un reporte hecho por otro, para aumentar su credibilidad. 

    Scenario: Confirmar un reporte por primera vez
        Given el usuario no ha confirmado el reporte
        When toca el botón "Confirmar"
        Then el sistema incrementa el contador de confirmaciones en 1

        Examples:
            | Incidentes | 
            | 300        | 

    
    Scenario: Intentar confirmar un reporte ya confirmado 
        Given el usuario ya confirmó el reporte
        When toca nuevamente "Confirmar"
        Then la app muestra "Ya confirmaste este reporte"

        Examples:
            | Incidente | 
            | 301       | 

        
    Scenario: Desconfirmar un reporte 
        Given el usuario habia confirmado el reporte
        When presionar "Quitar  confirmación"
        Then el contador de confirmaciones disminuye en 1

        Examples:
            | Incidente | 
            | 302       | 
            