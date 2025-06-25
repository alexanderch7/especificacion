Feature: Registro de incidencias
  Como usuario registrado
  Quiero poder registrar una incidencia desde la app
  Para que la municipalidad pueda atenderla rápidamente

  Scenario: Registro exitoso de una incidencia con todos los campos obligatorios
    Given que el usuario ha iniciado sesión en la aplicación
    And el usuario se encuentra en la pantalla de "Nueva Incidencia"
    When completa todos los campos requeridos:
      | Título        | Basura acumulada       |
      | Descripción   | Hay mucha basura en la esquina de mi calle |
      | Ubicación     | Av. Principal 123, Lima |
      | Foto          | imagen.jpg              |
    And presiona el botón "Registrar"
    Then se muestra un mensaje de confirmación: "Incidencia registrada exitosamente"
    And la incidencia aparece en la lista de incidencias del usuario