Feature: HU004-RNF Usabilidad Intuitiva para Nuevos Usuarios 
    Como nuevo usuario, quiero que la aplicación sea fácil de entender y usar desde el primer momento,
    para poder reportar mi primer incidente sin confusión ni necesidad de un tutorial extenso.

    Scenario: Reporte facil de entender
        Given el usuario es nuevo usando la app
        When entre a la app y seleccion la opcion 'Reportar incidente'
        Then el sistema hace que complete la informacion necesaria y envia su reporte

        Example:
            | usuario |  reporte  |
            | Antonio | Robo      |
            | Camila  |  Trafico  |
    
    Scenario: Interfaz entendible
        Given el usuario entra por primera vez a la app
        When ingrese a la pantalla principal
        Then el usuario podra hallar con facilidad el apartado de 'Reportar incidente', 'Mapa' y entre otros.

        Example:
            | usuario | Reportar incidente | Mapa |
            | Antonio | Robo               |      |
            | Camila  | trafico            |      |

    Scenario: Video introductorio
        Given el usuario ingrsea por primera vez
        When ingrese al menu principal
        Then el sistema dara la opcion de ver un video introductorio

        Example:
            | usuario |
            | Antonio |
            | Camila  |