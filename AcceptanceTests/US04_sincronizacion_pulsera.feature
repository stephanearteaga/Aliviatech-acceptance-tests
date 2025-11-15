ID: US04

Feature: Sincronización de pulsera inteligente
  Como usuario con pulsera AliviaTech
  Quiero sincronizar mi dispositivo con la aplicación móvil
  Para poder registrar mis signos vitales en tiempo real

  Scenario: Sincronización exitosa
    Given que el usuario se encuentra en la pantalla "Monitoreo IoT"
    And el Bluetooth del dispositivo está activado
    When selecciona la opción "Conectar dispositivo"
    Then el sistema muestra la lista de dispositivos disponibles

  Scenario: Error por incompatibilidad
    Given que el usuario intenta sincronizar
    When la pulsera no tiene bateria o no es compatible
    Then el sistema muestra el mensaje "Vinculación fallida".
