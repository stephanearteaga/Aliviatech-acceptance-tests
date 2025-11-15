ID: US06

Feature: Botón de emergencia
  Como usuario con síntomas de crisis
  Quiero presionar un botón de emergencia en la app
  Para contactar rapidamente a un especialista o familiar

  Scenario: Activación correcta de alerta
    Given que el usuario se encuentra dentro de la aplicación
    When presiona el botón "Emergencia"
    Then la app envía una alerta al especialista asignado
    And muestra el mensaje "Alerta enviada correctamente"

  Scenario: Fallo en el envío de alerta
    Given que el usuario no tiene conexión a internet
    When presiona el botón "Emergencia"
    Then la app muestra el mensaje "No se pudo enviar la alerta"
    And envia un SMS alternativo.
