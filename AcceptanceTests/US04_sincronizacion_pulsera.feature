Epic: Monitoreo Fisiológico
ID: US04

Feature: Sincronización de pulsera inteligente
  Como usuario con pulsera AliviaTech
  Quiero sincronizar mi dispositivo con la aplicación móvil
  Para poder registrar mis signos vitales en tiempo real
  
  Scenario: Sincronización exitosa
      When el usuario selecciona "Conectar pulsera"
      Then el sistema detecta el dispositivo disponible
      And muestra el mensaje "Pulsera sincronizada correctamente"
  
  Scenario: Error por incompatibilidad
      When el usuario intenta sincronizar una pulsera no certificada
      Then el sistema muestra el mensaje "Dispositivo no compatible"
      And sugiere verificar la versión o modelo del hardware
