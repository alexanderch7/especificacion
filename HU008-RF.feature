Feature: HU008-RF - Reporte de Bache (Conductor)
    Como conductor, quiero reportar baches y otros desperfectos en la vía
    para prevenir accidentes y daños a los vehículos.
    
    Scenario Outline: Reportar un bache adjuntando evidencia fotográfica
        Given un conductor ha pasado por un <ProblemaVial>
        When crea un reporte tipo "Bache/Pista dañada", marca la ubicación y adjunta la foto "<NombreFoto>"
        Then el reporte se envía al área de mantenimiento vial municipal.
        
        Examples:
        | ProblemaVial  | NombreFoto |
        | bache peligroso | bache1.jpg |

    Scenario Outline: Confirmar un reporte de bache existente
        Given un conductor ve un pin en el mapa de un <ReporteExistente> por el que acaba de pasar
        When abre el reporte y presiona el botón "Confirmar"
        Then la credibilidad del reporte aumenta, indicando que el problema persiste.
        
        Examples:
        | ReporteExistente |
        | Bache            |
        
    Scenario Outline: Filtrar el mapa para ver solo baches en la ruta
        Given un conductor quiere revisar el estado de su ruta habitual
        When aplica el filtro "<Filtro>" en la vista del mapa
        Then el mapa se actualiza, mostrando únicamente los reportes de bache.
        
        Examples:
        | Filtro               |
        | "Bache/Pista dañada" |
