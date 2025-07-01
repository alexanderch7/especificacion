Feature: HU014-RF - Notificación de Incidente Cercano 
    Como Sebastian (universitario), quiero recibir notificaciones push si se reporta un incidente grave cerca de mi ubicación actual. 

    Scenario: Recibir notificación dentro de 500 m
        Given el usuario permite notificaciones y el GPS está activo
        When se crea un incidente clasificado como "Grave" a 300 m
        Then el sistema envía una notificación push al dispositivo del usuario

        Examples:
            | Distancia | Tipo Incidente | 
            | 300       | Robo           | 

    
    Scenario: No recibir notificación si está fuera del radio
        Given las notificaciones están habilitadas
        When se reporta un incidente grave a 2 km
        Then el sistema  no envía notificación al usuario

        Examples:
            | Distancia | 
            | 2000      | 

    
    Scenario: Desactivar notificaciones temporales
        Given el usuario desactiva "Alertas cercanos" por 8 h
        When ocurre un incidente durante ese periodo 
        Then el sistema omite la notificación y reanuda al expirar el tiempo

        Examples:
            | Duración | 
            | 8h       |  
