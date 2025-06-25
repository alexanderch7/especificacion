Feature: HU024-RF - Reportar Ruido Excesivo
    Como un residente, quiero reportar ruido excesivo en mi vecindario
    para mantener la tranquilidad y el orden público.
    
    Scenario Outline: Reportar una fiesta ruidosa fuera del horario permitido
        Given un residente quiere reportar una fiesta a las "<Hora>"
        When crea un reporte de categoría "<Categoria>", especifica la dirección y el horario
        Then el sistema debe enviar el reporte a la autoridad competente (serenazgo o policía).
        
        Examples:
        | Categoria      | Hora  |
        | Ruido Excesivo | 2 AM  |
        
    Scenario Outline: Reportar un negocio con ruido constante
        Given un bar excede los límites de ruido todas las noches
        When un residente crea un reporte indicando que el problema es recurrente en la "<Descripcion>"
        Then el sistema debe permitir que se marque como "Problema Recurrente" para una investigación.
        
        Examples:
        | Descripcion                     |
        | "Ruido del bar es constante todas las noches" |

    Scenario Outline: Intentar reportar ruido sin especificar dirección
        Given el usuario selecciona la categoría "Ruido Excesivo"
        When intenta enviar el reporte sin completar el campo de dirección
        Then el sistema debe mostrar un mensaje de error "<MensajeError>".
        
        Examples:
        | MensajeError                        |
        | "Por favor, especifica la dirección." |
