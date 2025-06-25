Feature: HU025-RF - Compartir un Reporte en Redes Sociales
    Como un usuario activo, quiero compartir los reportes
    para aumentar la conciencia comunitaria y la presión social para una pronta solución.
    
    Scenario Outline: Compartir un reporte en WhatsApp
        Given el usuario está viendo un reporte sobre un <Incidente>
        When presiona el botón "Compartir" y selecciona "<RedSocial>"
        Then la aplicación de WhatsApp debe abrirse con un mensaje pre-configurado que incluye el enlace al reporte.
        
        Examples:
        | Incidente | RedSocial |
        | aniego    | WhatsApp  |

    Scenario Outline: Compartir un reporte en Facebook
        Given el usuario está viendo el detalle de un reporte
        When presiona el botón "Compartir" y selecciona "<RedSocial>"
        Then se debe abrir la interfaz de publicación de Facebook con un enlace e imagen del reporte.
        
        Examples:
        | RedSocial |
        | Facebook  |
        
    Scenario Outline: Copiar el enlace de un reporte para pegarlo manualmente
        Given el usuario está en la vista detallada de un reporte
        When presiona "Compartir" y selecciona la opción "<Opcion>"
        Then el sistema debe copiar el enlace del reporte al portapapeles y mostrar una confirmación.
        
        Examples:
        | Opcion         |
        | "Copiar enlace"|
