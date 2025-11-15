ID: US015
Feature: Monitoreo en tiempo real
  Como medico
  quiero monitorear en tiempo real los signos vitales de mi paciente
  para supervisar su estado de salud de manera continua.

  Scenario: Actualizacion continua de datos
      Given que el paciente tiene su pulsera activa
      When el especialista accede a su panel de monitoreo
      Then el sistema actualiza los datos del paciente en tiempo real

  Scenario: Perdida de conexion del paciente
      Given que el especialista esta revisando los datos
      When la conexion del paciente se interrumpe
      Then la app muestra el estado "desconectado"
      And alerta al especialista sobre la perdida de datos

