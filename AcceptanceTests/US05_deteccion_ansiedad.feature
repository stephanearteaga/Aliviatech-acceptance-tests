ID: US05

Feature: Detección de signos de ansiedad
  Como usuario
  quiero que la app detecte signos de ansiedad mediante la pulsera
  para recibir alertas tempranas.

  Scenario: Detección de signos elevados
    Given que el usuario lleva la pulsera IoT sincronizada
    And la pulsera registra su ritmo cardiaco y respiración
    When se detecta un aumento anormal que supera el umbral configurado
    Then el sistema envía una alerta inmediata al teléfono del usuario.

  Scenario: Marcado de falsa alarma
    Given que el usuario recibe una alerta de ansiedad 
    When selecciona la opción "Marcar como falsa alarma"
    Then el sistema registra la incidencia
    And ajusta los parámetros de detección para futuros eventos.
