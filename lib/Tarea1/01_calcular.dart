//CineMultimediaFlix
//1. Hacer un programa para calcular la suma,
//   diferencia y producto de dos números.
import 'dart:io';
void main(List<String>args){
  double  suma, diferencia, producto;
  print('Ingrese el primer numero');
  var num1 = stdin.readLineSync();
  print('Ingrese el primer numero');
  var num2 = stdin.readLineSync();

  if(num1 != null && num2 !=null){
    try{
      double n1 = double.parse(num1);
      double n2 = double.parse(num2);
      suma = n1 + n2;
      diferencia = n1 / n2;
      producto = n1 * n2;

      print('La suma de $n1 + $n2 es: ${suma.toStringAsFixed(0)}');
      print('La diferencia de $n1 / $n2 es: ${diferencia.toStringAsFixed(2)}');
      print('La producto de $n1 * $n2 es: $producto');

    }catch(e){
      print('esto hiciste mal: $e');
    }
  }
}