Feature: HU011-RF - HU011-RF 
    Como un usuario (Kevin), quiero ver los incidentes reportados en un mapa interactivo, para conocer los riesgos en diferentes zonas. 

    Scenario: Cargar el mapa con todos los incidentes
        Given el usuario accede a la pestaña "Mapa"
        When la aplicación solicita los datos de incidentes
        Then el sistema debe mostrar pines para todos los incidentes activos en menos de 3 segundos

        Examples:
            | Conexión |
            | 4G       |


    Scenario: Ver detalle al tocar un pin
        Given el mapa está cargado con incidentes
        When el usuario toca un pin de incidente
        Then la app abre un modal con titulo, foto y estado del reporte seleccionado

        Examples:
            | Pin tipo | 
            | Asalto   |


    Scenario: Manejar error de conexión
        Given el usuario abre "Mapa" sin conexión a internet
        When la app detecta ausencia de red
        Then se muestra un mensaje "Sin conexión" y un botón "Reintentar"

        Examples:
            | Conexión |
            | Offline  | 