Epic: Comunicación y Asistencia
ID: US09

Feature: Videollamada con especialista
  Como usuario
  Quiero realizar una videollamada con mi especialista
  Para recibir apoyo emocional en tiempo real

  Scenario: Inicio correcto de videollamada
    Dado que el usuario y el especialista están conectados
    Cuando el usuario selecciona "Iniciar videollamada"
    Entonces la app inicia la transmisión de video y audio
    Y ambos pueden comunicarse sin interrupciones

  Scenario: Problemas de conexión
    Dado que la red del usuario tiene baja calidad
    Cuando intenta realizar una videollamada
    Entonces la app muestra el mensaje "Conexión inestable"
    Y ofrece la opción de continuar solo con audio
