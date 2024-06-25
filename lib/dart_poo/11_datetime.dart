void main(List<String>args){
  DateTime fechaActual = DateTime.now();
  print(fechaActual);
  print(fechaActual.year);
  print(fechaActual.month);
  print(fechaActual.day);
  print(fechaActual.hour);
  print(fechaActual.minute);

  String fecha = '2024-07-20 20:12:23';
  DateTime fechaPasada = DateTime.parse(fecha);
  print(fechaPasada);

  DateTime dt1 = DateTime.parse('2024-05-20 10:12:23');
  DateTime dt2 = DateTime.parse('2024-06-12 12:14:13');
  Duration diferencia = dt2.difference(dt1);
  print(diferencia.inDays);
  print(diferencia.inHours);
  print(diferencia.inMinutes);

}