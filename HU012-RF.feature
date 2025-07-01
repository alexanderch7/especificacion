Feature: HU012-RF - Filtrar Incidentes por Tipo 
    Como un usuario (Deysi), quiero filtrar los incidentes en el mapa por tipo (ej. robos, accidentes), para enfocarme en lo que me preocupa. 

    Scenario: Filtrar solo robos
        Given el mapa muestra todos los incidentes
        When el usuario selecciona el filtro "Robos"
        Then el mapa actualiza los pines mostrando únicamente los incidentes de robo

        Examples:
            | Tipo filtro | 
            | Robos       | 
        
    
    Scenario: Filtrar múltiples categorías
        Given el mapa está cargado
        When el usuario marca "Accidentes" y "Basura"
        Then se muestran los pines de accidentes y basura y se ocultan los demás

        Examples:
            | Tipos               | 
            | Accidentes, Basura  |


    Scenario: Deseleccionar todos los filtros 
        Given el usuario ha aplicado filtros
        When presiona "Borrar filtros"
        Then se vuelven a mostrar todas las categorías

        Examples:
            | Estado filtros |
            | Vacío          |