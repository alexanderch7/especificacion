Feature: HU001-RF - Registro Rápido de Usuario
    Como un nuevo usuario, quiero crear una cuenta de manera sencilla
    para poder acceder a las funcionalidades de UrbAlert.

    Scenario Outline: Creación de cuenta con datos válidos
        Given el usuario se encuentra en la página de registro
        When completa todos los campos obligatorios con <CorreoValido> y <ContrasenaValida> y presiona "Registrarse"
        Then el sistema debe crear una nueva cuenta y redirigir al usuario a la página de inicio de sesión.

        Examples:
        | CorreoValido              | ContrasenaValida |
        | nuevo.usuario@dominio.com | Fuerte_12345     |

    Scenario Outline: Intento de registro con un correo electrónico ya existente
        Given un usuario intenta crear una cuenta con el correo <CorreoExistente> que ya está registrado
        When el usuario ingresa el <CorreoExistente> y presiona "Registrarse"
        Then el sistema debe mostrar un mensaje de error indicando que la dirección de correo ya está en uso.

        Examples:
        | CorreoExistente           |
        | usuario.antiguo@dominio.com |
    
    Scenario Outline: Intento de registro con contraseñas que no coinciden
        Given el usuario está en la página de registro
        When introduce una contraseña en el primer campo y una <ContrasenaDiferente> en el segundo campo de confirmación
        Then el sistema debe mostrar un mensaje de error indicando "Las contraseñas no coinciden".
        
        Examples:
        | ContrasenaDiferente |
        | Secreta_98765       |
