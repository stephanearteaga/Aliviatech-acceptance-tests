Epic: Monitoreo Fisiológico
ID: US05

Feature: Monitoreo en tiempo real de signos vitales
  Como usuario que usa la pulsera AliviaTech
  Quiero visualizar mis signos vitales en tiempo real
  Para poder conocer mi estado físico y emocional constantemente

  Scenario: Visualización correcta de datos
    Dado que la pulsera está sincronizada con la app
    Cuando el usuario abre la sección "Monitoreo en tiempo real"
    Entonces se muestran los valores actuales de frecuencia cardíaca, temperatura y oxígeno
    Y los datos se actualizan automáticamente cada pocos segundos

  Scenario: Falla en la transmisión de datos
    Dado que el dispositivo pierde conexión con la app
    Cuando el usuario intenta ver los datos en la pantalla de monitoreo
    Entonces se muestra el mensaje "Sin señal del dispositivo"
    Y se sugiere revisar la conexión Bluetooth
