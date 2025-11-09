Epic: Comunicación y Asistencia
ID-HU: US08

Feature: Chat con especialista
  Como usuario
  Quiero conversar con un especialista por chat
  Para recibir orientación emocional cuando me sienta ansioso

  Scenario: Envío y recepción de mensajes
    Dado que el usuario tiene una sesión activa
    Cuando escribe un mensaje en el chat y presiona "Enviar"
    Entonces el mensaje se muestra en la conversación
    Y el especialista puede responder en tiempo real

  Scenario: Error de conexión en el chat
    Dado que el usuario pierde conexión a internet
    Cuando intenta enviar un mensaje
    Entonces la app muestra "No se pudo enviar el mensaje"
    Y guarda el texto en el historial para reenviarlo más tarde
