import 'dart:io';
// 8. Hacer un programa que tome los segundos asignados
// en una variable y diga cuantas horas, minutos y segundos hay simultáneamente.
void main(List<String>args){
  int  horas,minutos,segundos;
  print('Ingrese segundos en valores enteros');
  var n = stdin.readLineSync();

  if(n != null){
    try{
      int totalSegundos = int.parse(n);
      horas = totalSegundos ~/ 3600;
      minutos = (totalSegundos % 3600) ~/ 60;
      segundos = totalSegundos % 60;

      print('$horas : $minutos : $segundos');
    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}