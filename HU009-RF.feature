Feature: HU009-RF - Reporte de Basura Acumulada

    Como Fernando (conductor), quiero reportar acumulación de basura en una esquina, para solicitar su recojo y mejorar el entorno. 
    
    Scenario: Reportar basura con evidencia fotográfia
        Given el usuario se encuentra en la pantalla de "Nuevo Reporte"
        When selecciona la categoria "Basura", adjunta una foto, coloca la ubicación y presiona el botón "Enviar"
        Then el sistema debe crear un reporte de basura y mostrarlo en el mapa con estado "Pendiente"

        Examples:
            | Categoría | Foto              | Ubicación             |
            | Basura    | basura_esq1.jpg   | -12.0623,-77.0376     |


    Scenario: Reportar basura sin foto adjunta
        Given el usuario se encuentra en la pantalla de "Nuevo reporte"
        When completa la descripción y ubicación pero no adjunta foto y presiona "Enviar"
        Then el sistema debe crear el reporte y mostrar en ícono genérico de basura en el mapa

        Examples:
            | Categoría | Descripción                 | Ubicación            |
            | Basura    | Bolsas acumuladas esquina   | -12.0623,-77.0376    |
    

    Scenario: Intentar reportar basura sin ubicación
        Given el usuario intenta crear un reporte de basura
        When deja el campo de ubicación vacío y presiona "Enviar"
        Then el sistema debe mostrar un mensaje de error indicando que la ubicación es obligatoria

        Examples:
            | Categoría | Descripción       |
            | Basura    | Montón de bolsas  |