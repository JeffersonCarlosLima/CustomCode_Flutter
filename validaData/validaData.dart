//verificar data atual
//verificar se esta dentro do intervalo entre data de inicio e final
//se estiver fora do intervalo irá retornar um valor boleano  false
bool isDateWithinRange(DateTime startDate, DateTime endDate) {
  // Obtém a data atual
  DateTime now = DateTime.now();

  // Verifica se a data atual está dentro do intervalo
  if (now.isAfter(startDate) && now.isBefore(endDate)) {
    return true; // Está dentro do intervalo
  } else {
    return false; // Está fora do intervalo
  }
}
