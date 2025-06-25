Feature: HU028-RF - Ver Nivel de Peligrosidad de una Ruta
    Como un conductor, quiero evaluar la peligrosidad de una ruta
    para tomar decisiones informadas y elegir el camino más seguro.

    Scenario Outline: Trazar una ruta a través de una zona segura
        Given el usuario ingresa un <Origen> y <Destino> que atraviesan una zona de baja incidencia
        When la aplicación calcula la ruta
        Then el sistema debe trazarla y mostrarla en color "<ColorRuta>" con el indicador "<Indicador>".

        Examples:
        | Origen      | Destino    | ColorRuta | Indicador      |
        | Miraflores  | San Isidro | verde     | "Ruta Segura"  |

    Scenario Outline: Trazar una ruta a través de una zona de alta peligrosidad
        Given el usuario traza una ruta que atraviesa zonas con alta incidencia de "<TipoIncidente>"
        When la aplicación muestra la ruta
        Then el sistema debe trazarla, mostrarla en color "<ColorRuta>" y con un aviso de "<Indicador>".

        Examples:
        | TipoIncidente | ColorRuta | Indicador           |
        | Asalto        | rojo      | "Alta Peligrosidad" |

    Scenario: Comparar rutas alternativas con diferente nivel de riesgo
        Given el sistema ha calculado dos rutas posibles para el mismo destino
        When el usuario visualiza ambas rutas en el mapa
        Then el sistema debe diferenciar la "Ruta A" (corta y <RiesgoRutaA>) de la "Ruta B" (larga y <RiesgoRutaB>).
        
        Examples:
        | RiesgoRutaA          | RiesgoRutaB    |
        | peligrosa (amarillo) | segura (verde) |
