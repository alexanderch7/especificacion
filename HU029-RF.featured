Feature: HU029-RF - Recibir Consejos de Seguridad
    Como un usuario que busca estar prevenido, quiero acceder a consejos de seguridad
    para saber cómo actuar ante diferentes situaciones de riesgo.
    
    Scenario: Consultar consejos de seguridad generales
        Given el usuario selecciona la opción "Consejos de Seguridad" en el menú principal
        When la pantalla carga
        Then el sistema debe mostrar una lista de consejos como "<ConsejoEjemplo>".
        
        Examples:
        | ConsejoEjemplo                     |
        | "Mantente atento a tu entorno"     |
        
    Scenario Outline: Recibir un consejo de seguridad contextual
        Given el usuario planifica una ruta con <CaracteristicaRuta>
        When la ruta se muestra en el mapa
        Then el sistema debe mostrar un consejo contextual: "<ConsejoContextual>".
        
        Examples:
        | CaracteristicaRuta | ConsejoContextual                                     |
        | poca iluminación   | "Esta ruta es oscura, considera un transporte alternativo"|
        
    Scenario Outline: Buscar un consejo para una situación específica
        Given el usuario está en la sección "Consejos de Seguridad"
        When usa la barra de búsqueda e introduce el término "<TerminoBusqueda>"
        Then el sistema debe mostrar consejos relacionados con <TerminoBusqueda>.
        
        Examples:
        | TerminoBusqueda |
        | Sismo           |
