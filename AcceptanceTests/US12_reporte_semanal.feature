Epic: Análisis y Seguimiento
ID : US12

Feature: Generación automática de reportes semanales
  Como especialista
  Quiero recibir reportes automáticos de los usuarios asignados
  Para evaluar su progreso y detectar posibles recaídas

  Scenario: Generación automática de reporte
    Dado que el sistema cuenta con los datos de la semana
    Cuando llega el día domingo
    Entonces el sistema genera un reporte con métricas de signos vitales y estados de ánimo
    Y lo envía automáticamente al especialista y al usuario

  Scenario: Error al generar reporte
    Dado que existen datos incompletos en la base
    Cuando el sistema intenta generar el reporte semanal
    Entonces muestra el mensaje "Faltan registros para completar el informe"
    Y guarda el intento en el historial de tareas
