Feature: HU001-RNF-Rendimiento Óptimo del Mapa 
    Como usuario, quiero que el mapa de incidentes cargue rápidamente (en menos de 3 segundos) al abrirlo o filtrar, para no perder tiempo ni frustrarme. 

  Scenario: Carga Rapida del mapa
    Given que el usuario cuenta con un estado de red estable 
    When abre el apartado del mapa en la aplicacion
    Then el mapa lograra cargar de manera rapida en menos de 3 segundos con todos los detalles incluidos.

    Example: 
        | usuario | Conexion | tiempo de Conexion |
        | juan    |  wifi    | >3 segundos        |
        | Pablo   |  5G      |  >3 segundos       |

  Scenario: filtrar mapa
    Given el usuario se encuentra viendo el mapa
    When escoge un filtro y le da guarda cambios
    Then el mapa cambia y solo muestra el mapa con los filtros seleccionados. 

    Example: 
        | usuario | Filtro   |
        | juan    |  robo    |
        | Pablo   |  bache   |

  Scenario: Cambiar zona del mapa
    Given el usuario se encuentra viendo el mapa
    When el usuario se mueva a otra ubicacion
    Then el mapa se recarga y muestra los incidentes de la ubicacion nueva.

    Example: 
        |usuario | ubicacion actual| ubicacion nueva|
        | juan   |  el agustino    | la victoria    |
        | Pablo  |  Callao         |  San Isidro    |