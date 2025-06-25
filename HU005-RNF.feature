Feature: HU005-RNF-Compatibilidad con Dispositivos Comunes 

    Como usuario, quiero que UrbAlert funcione correctamente en las versiones más comunes de Android e iOS, para asegurar acceso desde mi dispositivo. 
    Scenario: UrbAlert en android
        Given el usuario descarga la app
        When abre la app 
        Then UrbAlert debe ejecutarse sin problemas

        Example: 
            | usuario |  Android |
            | Juan    |    11    |
            | Pablo   |    12    |
    
    Scenario: UrbAlert en ios
        Given el usuario descarga la app
        When abre la app 
        Then UrbAlert debe ejecutarse sin problemas

        Example: 
            | usuario |    IOS   |
            | Juan    |    13    |
            | Pablo   |    14    | 

    Scenario: funciones compatibles en ambos sistemas operativos
        Given el usuario accede a la app desde un dispositivo android o ios
        When el usuario desee generara un reporte
        Then el sistema debe permitir hacer el reporte sin errores       

        Example: 
            | usuario |    Dispositivo   | Version  |
            | Juan    |    Android       |    12    |
            | Pablo   |    IOS           |    14    |