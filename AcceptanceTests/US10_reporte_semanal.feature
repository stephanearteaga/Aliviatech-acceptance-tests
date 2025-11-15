ID : US010

Feature: Historial de reportes semanales
  Como usuario
  quiero recibir un reporte semanal de mis signos vitales y episodios de ansiedad
  para revisar mi progreso y entender mi estado emocional a lo largo del tiempo

  Scenario: Generacion automatica del reporte semanal
    Given que el sistema recopila datos diarios del usuario
    When llega el dia domingo
    Then el sistema genera un reporte con estadisticas y progreso

  Scenario: Error al generar el reporte
    Given que la app intenta generar el reporte semanal
    When no hay datos suficientes
    Then el sistema muestra el mensaje "Faltan datos para generar el informe"
    And registra el intento fallido en el historial de tareas
