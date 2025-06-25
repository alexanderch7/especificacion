Feature: HU033-RF - Recuperar Contraseña Olvidada
    Como un usuario, quiero un método para recuperar el acceso a mi cuenta
    en caso de que olvide mi contraseña.

    Scenario Outline: Iniciar proceso de recuperación con correo válido
        Given el usuario está en la pantalla de "Inicio de Sesión"
        When presiona "¿Olvidaste tu contraseña?" e introduce su <EmailRegistrado>
        Then el sistema debe enviar un enlace de recuperación a ese correo.
        
        Examples:
        | EmailRegistrado          |
        | usuario.registrado@test.com |

    Scenario Outline: Intentar recuperar con correo no registrado
        Given el usuario se encuentra en la pantalla de recuperación de contraseña
        When introduce una dirección de correo <EmailNoRegistrado>
        Then el sistema debe mostrar un mensaje genérico para proteger la privacidad.
        
        Examples:
        | EmailNoRegistrado         |
        | usuario.inexistente@test.com |

    Scenario Outline: Establecer una nueva contraseña a través del enlace
        Given el usuario ha hecho clic en el enlace de recuperación
        When introduce y confirma una nueva contraseña que cumpla con los <CriteriosDeSeguridad>
        Then el sistema debe actualizar la contraseña y permitir el inicio de sesión con la nueva.
        
        Examples:
        | CriteriosDeSeguridad                |
        | "mínimo 8 caracteres, una mayúscula"|
