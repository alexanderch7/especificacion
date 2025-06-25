Feature: HU022-RF - Reportar Iluminación Pública Defectuosa
    Como un vecino preocupado, quiero reportar fallas en el alumbrado público
    para contribuir a la seguridad de mi vecindario.

    Scenario Outline: Reportar un poste de luz específico con evidencia
        Given el usuario se encuentra en la pantalla de "Nuevo Reporte"
        When selecciona la categoría "<Categoria>", adjunta una foto, coloca la ubicación y presiona "Enviar"
        Then el sistema debe crear un reporte y mostrarlo en el mapa con estado "Pendiente".

        Examples:
        | Categoria                |
        | Falla de Iluminación     |

    Scenario Outline: Reportar una calle entera a oscuras usando la descripción
        Given el usuario se encuentra en la pantalla de "Nuevo Reporte"
        When selecciona la categoría "Falla de Iluminación" y añade la descripción "<Descripcion>"
        Then el sistema debe crear el reporte y la descripción debe ser visible para las autoridades.

        Examples:
        | Descripcion                             |
        | "Toda la cuadra 5 está completamente a oscuras." |

    Scenario Outline: Intentar reportar una falla de iluminación sin especificar ubicación
        Given el usuario intenta crear un reporte de "Falla de Iluminación"
        When deja el campo de ubicación vacío y presiona "Enviar"
        Then el sistema debe mostrar un mensaje de error indicando que "<MensajeError>".
        
        Examples:
        | MensajeError                   |
        | "La ubicación es obligatoria"  |
