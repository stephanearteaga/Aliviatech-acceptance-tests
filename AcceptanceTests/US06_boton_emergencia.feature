ID: US06

Feature: Botón de emergencia
  Como usuario con síntomas de crisis
  Quiero presionar un botón de emergencia en la app
  Para recibir ayuda inmediata y sentirme seguro

  Scenario: Activación correcta de alerta
    Dado que el usuario se encuentra dentro de la aplicación
    Cuando presiona el botón "Emergencia"
    Entonces la app envía una alerta al especialista asignado
    Y muestra el mensaje "Alerta enviada correctamente"

  Scenario: Fallo en el envío de alerta
    Dado que el usuario no tiene conexión a internet
    Cuando presiona el botón "Emergencia"
    Entonces la app muestra el mensaje "No se pudo enviar la alerta"
    Y sugiere verificar la conexión antes de reintentar
