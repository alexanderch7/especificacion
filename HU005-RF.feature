Feature: HU005-RF - Reporte de Intento de Robo
    Como repartidor, quiero reportar un intento de robo de forma rápida y segura
    sin ponerme en mayor riesgo.

    Scenario Outline: Activar reporte discreto de intento de robo
        Given el usuario se encuentra en una situación de riesgo
        When activa la función "<Funcion>" con un solo toque
        Then la app captura su ubicación y envía un reporte preliminar sin más interacciones.

        Examples:
        | Funcion                         |
        | "Reporte Rápido de Intento de Robo"|

    Scenario Outline: Añadir detalles a un reporte rápido una vez a salvo
        Given el usuario ha enviado un reporte rápido y ahora está en un lugar seguro
        When abre el reporte desde su historial y añade una <DescripcionDetallada>
        Then el reporte se actualiza con la nueva información.
        
        Examples:
        | DescripcionDetallada           |
        | "Dos sujetos en una moto lineal" |

    Scenario Outline: Activar la función de reporte rápido sin conexión a internet
        Given el usuario está sin conexión e intenta activar el reporte rápido
        When presiona el botón de reporte rápido
        Then la app debe guardar la alerta localmente para enviarla tan pronto como se restablezca la conexión.
        
        Examples:
        | EstadoConexion |
        | Sin Cobertura  |
