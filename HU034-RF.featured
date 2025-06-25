Feature: HU034-RF - Modo Offline para Reportar
    Como un usuario, quiero poder crear reportes incluso sin conexión a internet.
    
    Scenario: Crear un reporte estando desconectado
        Given el usuario está en una zona <EstadoConexion>
        When completa un reporte y presiona "Guardar"
        Then el sistema debe guardar el reporte localmente en la "<Bandeja>".

        Examples:
        | EstadoConexion  | Bandeja            |
        | sin cobertura   | "Bandeja de Salida"|

    Scenario: Sincronización automática al recuperar la conexión
        Given el usuario tiene <CantidadReportes> en la bandeja de salida
        When el dispositivo recupera la conexión a internet
        Then la aplicación debe enviar automáticamente los reportes pendientes.
        
        Examples:
        | CantidadReportes |
        | 3                |

    Scenario: Visualizar reportes pendientes en bandeja de salida
        Given el usuario ha creado <CantidadReportes> en modo offline
        When navega a la sección "Bandeja de Salida"
        Then debe ver una lista de <CantidadReportes> con el estado "Pendiente de Sincronización".
        
        Examples:
        | CantidadReportes |
        | 3                |
