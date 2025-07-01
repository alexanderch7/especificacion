Feature: HU015-RF - Notificación de Actualización de Reporte 
    Como Milagros (conductora), quiero recibir una notificación cuando un incidente que reporté (ej. bache) sea actualizado o resuelto. 

    Scenario: Recibir actualización de estado "Resuelto"
        Given el usuario reportó el incidente
        When la autoridad cambia el estado a "Resuelto"
        Then el sistema envia una notificación push indicando que el incidente fue resuelto

        Examples:
            | Incidentes  | Nuevo estado | 
            | 123         | Resuelto     | 

    
    Scenario: Recibir actualización intermedia "En proceso"
        Given el usuario reportó el incidente
        When el estado pasa a "En proceso"
        Then el usuario recibe una notificación "Tu reporte está siendo atendido"

        Examples:
            | Incidente | Nuevo estado |
            | 124       | En proceso   |


    Scenario: No notificar cambios menores si el usuario los deshabilitó
        Given el usuario desactivó "Actualizaciones intermedias"
        When el incidente
        Then el sistema no envía notificación

        Examples:
            | Incidente | 
            | 125       | 