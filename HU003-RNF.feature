Feature: HU003-RNF-Alta Disponibilidad del Servicio 
    Como usuario, quiero que UrbAlert esté disponible el 99.5% del tiempo, especialmente durante emergencias, para poder reportar o consultar incidentes cuando lo necesite. 
    
    Scenario: Acceso todo el dia
        Given hay varios usuarios conectados a la vez
        When un usuario quiera ingresar
        Then la app permitira que el usuario ingrese en el menor tiempo posible

        Example:
            |  usuario  |  Ingreso | tiempo de imgreso |
            | Pablo     |  12:00   |  >2 segundos      |
            | Juan      |  16:00   | >3 segundos       |
    
    Scenario: Emergencia
        Given sucedio una emergencia
        When el usuario reporte la emergencia
        Then la app debe permitir que el reporte se ejecute de manera correcta y sin problemas

        Example: 
            | usuario | Emergencia   |
            | juan    |  robo        |
            | Pablo   |  Choque      |
    
    Scenario: consultas todo el dia
        Given el usuario accede a horas tempranas del dia
        When seleccione el apartado de 'Consultas'
        Then el sisteme permitira realizar la consulta deseada

        Example:
            | usuario | Acceso   | consulta  |
            | juan    |   01:00  | consulta1 |
            | Pablo   |   02:00  | consulta2 |