Feature: HU002-RF - Inicio de Sesión Seguro
    Como un usuario registrado, quiero acceder a mi cuenta de forma segura
    para utilizar las herramientas de la aplicación.
    
    Scenario Outline: Inicio de sesión exitoso con credenciales correctas
        Given soy un usuario registrado con el correo <CorreoValido> y contraseña <ContrasenaValida>
        When introduzco mis credenciales y presiono "Iniciar Sesión"
        Then el sistema me autentica y me redirige a la pantalla principal.

        Examples:
        | CorreoValido              | ContrasenaValida |
        | usuario.registrado@test.com | Segura_123       |

    Scenario Outline: Intento de inicio de sesión con contraseña incorrecta
        Given soy un usuario registrado con el correo <CorreoValido>
        When introduzco una contraseña incorrecta y presiono "Iniciar Sesión"
        Then el sistema debe mostrar un mensaje de error que dice "Email o contraseña incorrectos".

        Examples:
        | CorreoValido              |
        | usuario.registrado@test.com |
    
    Scenario Outline: Bloqueo temporal por múltiples intentos fallidos
        Given un usuario ha intentado iniciar sesión con contraseña incorrecta <IntentosFallidos> veces seguidas
        When realiza el sexto intento fallido
        Then la cuenta se bloquea temporalmente por 15 minutos y se muestra un mensaje informativo.
        
        Examples:
        | IntentosFallidos |
        | 5                |
