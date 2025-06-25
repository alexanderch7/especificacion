Feature: HU023-RF - Reportar Venta Ambulante Obstructiva
    Como un transeúnte, quiero reportar el comercio ambulante que obstruye el paso
    para mejorar la transitabilidad y el orden en la vía pública.

    Scenario Outline: Reportar un puesto ambulante que obstruye la vereda
        Given el usuario se encuentra en la pantalla de "Nuevo Reporte"
        When selecciona la categoría "<Categoria>", describe la obstrucción y marca la ubicación
        Then el sistema debe crear un reporte para notificar a fiscalización municipal.
        
        Examples:
        | Categoria           |
        | Venta Ambulante     |

    Scenario Outline: Reportar vendedores caminando entre los carros
        Given el usuario está presenciando una situación de riesgo con vendedores ambulantes
        When crea un reporte de "Venta Ambulante" y añade la descripción "<DescripcionPeligro>"
        Then el sistema debe crear el reporte, priorizándolo por el riesgo a la seguridad vial.
        
        Examples:
        | DescripcionPeligro                            |
        | "Vendedores caminando entre los carros, peligro de accidente." |

    Scenario Outline: Confirmar un reporte existente de venta ambulante
        Given el usuario ve un pin de "Venta Ambulante" en una ubicación donde el problema persiste
        When selecciona el pin y presiona el botón "Confirmar que el problema continúa"
        Then el sistema debe aumentar el contador de confirmaciones del reporte, dándole más visibilidad.
        
        Examples:
        | AccionUsuario   |
        | Confirmar       |
