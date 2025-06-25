Feature: HU035-RF - Personalizar Tipos de Notificaciones
    Como un usuario, quiero controlar las notificaciones que recibo
    para mantenerme informado sobre lo que me importa.
    
    Scenario Outline: Desactivar notificaciones para una categoría específica
        Given el usuario está en la pantalla de "Configuración de Notificaciones"
        When desmarca la casilla para la categoría "<CategoriaADesactivar>"
        Then el sistema debe guardar la preferencia y no enviar más notificaciones de esa categoría.

        Examples:
        | CategoriaADesactivar |
        | Ruido Excesivo       |

    Scenario: Activar notificaciones solo para categorías de alta peligrosidad
        Given el usuario ha accedido a la configuración de notificaciones
        When activa las notificaciones para "<Categoria1>" y "<Categoria2>", y desactiva las demás
        Then el usuario solo debe recibir alertas push para <Categoria1> y <Categoria2>.
        
        Examples:
        | Categoria1 | Categoria2  |
        | Asaltos    | Accidentes  |
        
    Scenario: Restaurar notificaciones a su estado por defecto
        Given el usuario ha personalizado sus notificaciones
        When presiona el botón "Restaurar a valores por defecto"
        Then el sistema debe reactivar todas las notificaciones de alta y media prioridad.
        
        Examples:
        | Accion     |
        | Restaurar  |
