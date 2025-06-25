Feature: HU027-RF - Configurar Contactos de Emergencia
    Como un usuario precavido, quiero gestionar mis contactos de emergencia
    para asegurar que las personas correctas sean alertadas en una situación de riesgo.

    Scenario Outline: Añadir exitosamente un nuevo contacto de emergencia
        Given el usuario se encuentra en la pantalla de "Configuración de perfil"
        When navega a "Contactos de Emergencia" y añade a <NombreContacto> con el número <Numero>
        Then el sistema debe guardar el contacto y mostrarlo en la lista de emergencia.
    
        Examples:
        | NombreContacto | Numero     |
        | Mamá           | 987654321  |
        | Hermano        | 912345678  |

    Scenario Outline: Intentar añadir más del límite permitido de contactos
        Given el usuario ya tiene configurado el número máximo de <Limite> contactos de emergencia
        When intenta guardar un sexto contacto de emergencia
        Then el sistema debe mostrar un mensaje de error indicando "Ha alcanzado el límite de 5 contactos".

        Examples:
        | Limite |
        | 5      |

    Scenario Outline: Eliminar un contacto de emergencia existente
        Given el usuario tiene el contacto <NombreContacto> en su lista de emergencia
        When selecciona ese contacto y presiona la opción "Eliminar"
        Then el sistema debe remover a <NombreContacto> de la lista y confirmar la eliminación.

        Examples:
        | NombreContacto  |
        | Contacto Antiguo|
