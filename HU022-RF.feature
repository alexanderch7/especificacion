 @HU022-RF
  Scenario: Reportar una calle entera a oscuras
    Given el vecino está en la pantalla de nuevo reporte
    When selecciona "Falla de Iluminación" y añade en la descripción "Toda la cuadra 5 de la Av. Principal está sin luz"
    Then el reporte es enviado, y el comentario proporciona contexto adicional a las autoridades.
