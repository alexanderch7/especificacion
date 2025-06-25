Feature: HU030-RF - Reportar Vehículo Sospechoso
    Como un vecino vigilante, quiero reportar vehículos sospechosos
    para alertar a mi comunidad y a las autoridades.

    Scenario Outline: Reportar un vehículo sospechoso con detalles
        Given el usuario está en la pantalla de "Nuevo Reporte"
        When selecciona la categoría "<Categoria>" y añade la descripción "<Descripcion>"
        Then el sistema debe crear un reporte y mostrarlo en el mapa.

        Examples:
        | Categoria           | Descripcion                 |
        | Vehículo Sospechoso | "Auto negro sin placas merodeando"     |

    Scenario Outline: Añadir placa y evidencia fotográfica al reporte
        Given el usuario está creando un reporte de "Vehículo Sospechoso"
        When ingresa la placa "<Placa>", adjunta el archivo de foto "<NombreFoto>" y presiona "Enviar"
        Then el sistema debe crear el reporte incluyendo la placa y la imagen adjunta.

        Examples:
        | Placa     | NombreFoto        |
        | "ABC-123" | vehiculo_xyz.jpg  |

    Scenario Outline: Intentar reportar sin descripción
        Given el usuario intenta crear un reporte de "Vehículo Sospechoso"
        When deja el campo de descripción vacío y presiona "Enviar"
        Then el sistema debe mostrar un mensaje de error indicando que "<MensajeError>".

        Examples:
        | MensajeError                   |
        | "La descripción es obligatoria para este tipo de reporte" |
