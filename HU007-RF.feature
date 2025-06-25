Feature: HU007-RF - Reporte de Accidente Vehicular (Colegial)
    Como un testigo de un accidente, quiero reportarlo de manera rápida y efectiva
    para que las autoridades y los servicios de emergencia puedan responder a tiempo.
    
    Scenario Outline: Reportar un accidente vehicular presenciado
        Given el usuario ha presenciado un accidente en la <Ubicacion>
        When crea un reporte de tipo "<TipoReporte>" y marca la ubicación
        Then el reporte se envía para alertar a las autoridades competentes.
        
        Examples:
        | Ubicacion          | TipoReporte         |
        | "cerca de mi colegio" | Accidente Vehicular |
        
    Scenario Outline: Indicar si hay heridos en el accidente
        Given en el accidente hay personas que necesitan asistencia médica
        When el usuario crea el reporte y marca la opción "<OpcionHeridos>"
        Then el sistema debe aumentar la prioridad del reporte para despachar ayuda médica.
        
        Examples:
        | OpcionHeridos |
        | "Hay heridos" |
    
    Scenario Outline: Reportar un accidente menor que causa congestión vehicular
        Given un accidente menor está bloqueando un <Carril>
        When el usuario reporta el "Accidente Vehicular" con el comentario "<ComentarioTrafico>"
        Then otros usuarios que consulten esa ruta verán una alerta sobre el incidente y la congestión.
        
        Examples:
        | Carril         | ComentarioTrafico              |
        | carril derecho | "Accidente bloqueando el tráfico"|
