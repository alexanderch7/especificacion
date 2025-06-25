Feature: HU026-RF - Botón de Pánico (SOS)
    Como un usuario en peligro, quiero un botón SOS
    para alertar rápidamente a mis contactos de confianza.
    
    Scenario: Activación exitosa del botón SOS
        Given el usuario tiene contactos de emergencia configurados
        When mantiene presionado el botón SOS por 3 segundos
        Then se envía un SMS de alerta con su <Ubicacion> a sus contactos.
        
        Examples:
        | Ubicacion |
        | "Mi ubicación GPS actual" |

    Scenario: Intento de activación sin contactos configurados
        Given el usuario no ha configurado ningún contacto de emergencia
        When presiona el botón SOS
        Then la aplicación muestra un mensaje pidiendo que "<MensajeDeError>".
        
        Examples:
        | MensajeDeError                              |
        | "Configure sus contactos de emergencia primero" |
        
    Scenario: Cancelación accidental del SOS
        Given el usuario ha presionado el botón SOS y aparece una cuenta regresiva de 5 segundos
        When presiona "Cancelar" antes de que la cuenta regresiva finalice
        Then el envío de la alerta se detiene.
        
        Examples:
        | Accion      |
        | Cancelar    |
