Feature: HU010-RF - Reporte de Semáforo Malogrado
    Como Ivet (conductora), quiero reportar un semáforo malogrado, para prevenir caos vehicular y accidentes. 

    Scenario: Reportar semáforo sin luz verde
        Given la usuaria se encuentra en la pantalla de "Nuevo reporte"
        When selecciona "Semáforo malogrado", adjunta foto y ubicación y presiona "Enviar"
        Then el sistema debe registrar el incidente y notificar a la autoridad de tránsito correspondiente

        Examples:
            | Foto                    | Ubicación         | 
            | semaforo_sin_verde.jpg  | -12.0751,-77.0288 |

    
    Scenario: Reportar semáforo intermitente de noche
        Given la usuaria crea un nuevo reporte de semáforo
        When detalla "luces intermitentes" y envía el formulario
        Then el sistema debe crear el reporte y enviarlo con prioridad "Media"


        Examples:
            | Descripción          | Hora   | Ubicación         |
            | Luces intermitentes  | 23:15  | -12.0780,-77.0301 |

    Scenario: Error al faltar descripción
        Given la usuaria abre "Nuevo reporte" de semáforo
        When deja la descripción vacía y presiona "Enviar"
        Then el sistema muestra un mensaje indicando que la descripción es requerida

        Examples:
            | Foto               | 
            | semaforo_roto.jpg  | 