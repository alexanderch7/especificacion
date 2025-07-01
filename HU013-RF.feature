Feature: HU013-RF - Filtrar Incidentes por Fecha 
    Como un usuario (Camila), quiero filtrar los incidentes por rango de fechas, para ver solo los eventos recientes o históricos. 

    Scenario: Ver incidentes de la última semana
        Given el mapa muestra todos los incidentes
        When el usuario selecciona "Últimos 7 días"
        Then la lista de pines se actualiza mostrando solo incidentes con fecha dentro del rango

        Examples:
            | Rango | 
            | 7d    |


    Scenario: Ver incidentes de un mes específico
        Given el usuario se encuentra en filtros de fecha
        When selecciona "Marzo 2025"
        Then se muestran solo los incidentes ocurridos en marzo 2025

        Examples:
            | Mes    | 
            | 03/25  | 


    Scenario: Intentar aplicar rango inválido 
        Given el usuario ingresar un rango donde fecha fin < fecha inicio
        When pulse "Aplicar"
        Then la app muestra "Rango de fechas inválido"

        Examples:
            | inicio      | Fin         | 
            | 10-04-2025  | 05-04-2025  |
             