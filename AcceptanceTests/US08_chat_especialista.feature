ID: US08

Feature: Chat con especialista
  Como usuario
  quiero conversar con un especialista por chat
  para recibir orientación emocional cuando me sienta ansioso.

  Scenario: Envío y recepción de mensajes
    Given que el usuario tiene una sesión activa
    When escribe un mensaje en el chat y presiona "Enviar"
    Then el mensaje se muestra en la conversación
    And el especialista puede responder en tiempo real.

  Scenario: Error de conexión en el chat
    Given que el usuario pierde conexión a internet
    When intenta enviar un mensaje
    Then la app muestra "No se pudo enviar el mensaje"
    And agenda respuesta diferida.
