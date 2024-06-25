import 'dart:io';
//calcular el tiempo cuando se aumenta t segundos
void main(List<String>args){
  int partida_en_segundos, llegada, horaL, minutoL, segundoL;
  print('Ingrese horas, minutos y segundos');
  print('Ingrese la hora');
  var v1 = stdin.readLineSync();
  print('Ingrese minutos');
  var v2 = stdin.readLineSync();
  print('Ingrese segundos');
  var v3 = stdin.readLineSync();
  print('Ingrese T segundos ');
  var v4 = stdin.readLineSync();
  if(v1!=null&&v2!=null&&v3!=null&&v4!=null){
    try{
      int horas = int.parse(v1);
      int minutos = int.parse(v2);
      int segundos = int.parse(v3);
      int T = int.parse(v4);
      //convirtiendo horas y minutos a segundos
      partida_en_segundos = horas * 3600 + minutos * 60 + segundos;
      //sumando partida en segundos con los t segundos
      llegada = partida_en_segundos + T;
      //convirtiendo segundos a horas minutos y segundos restantes
      horaL = (llegada ~/ 3600)% 24;
      minutoL = (llegada % 3600)~/ 60;
      segundoL = (llegada % 3600)% 60;

      print('la hora de legada es: $horaL: $minutoL: $segundoL');
    }catch(e){
      print('Oh MyGucci!! $e');
    }
  }
}