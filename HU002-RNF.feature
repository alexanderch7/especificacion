Feature: HU002-RNF Seguridad de Datos del Usuario 
    Como usuario, quiero que mis datos personales (email, reportes anónimos) se almacenen y transmitan de forma segura, para proteger mi privacidad. 
    
    Scenario: Proteccion de datos
        Given el usuario coloca su email y contraseña en la pantalla de inicio
        When seleccione 'Ingresar'
        Then los datos del usuario se almacenaran en el servidor

        Example: 
            | usuario | email           | contraseña |
            | Juan    | juan1@gmail.com | 12312311   |
            | Pablo   | pablo1@gmail.com| 4534634346 |
    
    Scenario: encriptacion de datos
        Given el usuario coloca los datos necesairios en resgitro
        When seleccione 'Registrarse'
        Then todos los datos del usuario seran cifrados y guardados.

        Example: 
            | usuario | email           | contraseña | cifrado |
            | Juan    | juan1@gmail.com | 12312311   | 1010111 |
            | Pablo   | pablo1@gmail.com| 4534634346 | 1110010 |
    
    Scenario: reporte anonimo
        Given el usuario realiza un reporte con la opcion de 'Anonimo'
        When otro usuario entra al reporte
        Then el reporte mostrara como autor 'Anonimo' 
        
        Example: 
            | usuario | reporte   |
            | Anonimo |  robo     |
            | Anonimo |  trafico  |