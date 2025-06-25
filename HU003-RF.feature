Feature: HU003-RF - Reporte de Asalto
    Como dueño de un negocio, quiero reportar un asalto de forma precisa
    para que las autoridades puedan actuar rápidamente.
    
    Scenario Outline: Reportar un asalto con todos los detalles
        Given el usuario ha iniciado sesión y selecciona la opción "Crear Reporte"
        When elige la categoría "<Categoria>", describe el suceso, adjunta evidencia y marca la ubicación
        Then el sistema debe enviar el reporte y clasificarlo con prioridad alta.

        Examples:
        | Categoria |
        | Asalto    |

    Scenario Outline: Intentar reportar un asalto sin especificar la ubicación
        Given el usuario está llenando un formulario para reportar un asalto
        When intenta enviar el reporte sin completar el campo de ubicación
        Then el sistema debe mostrar un mensaje de error indicando que "<MensajeError>".

        Examples:
        | MensajeError                   |
        | "La ubicación es obligatoria"  |

    Scenario Outline: Cancelar la creación de un reporte de asalto
        Given el usuario está a mitad de crear un reporte de asalto
        When presiona el botón "Cancelar"
        Then la aplicación debe descartar los cambios y regresar a la pantalla anterior.
        
        Examples:
        | Accion     |
        | Cancelar   |
