//Escribe un programa que lea una lista de números enteros
// y calcule la suma de todos los elementos en la lista.
import 'dart:io';
void main(List<String>args) {
  print('Suma de Numeros');
  var lista = [1, 2, 3, 4, 5, 6];
  int suma = 0,
      c = 0;
  for (var numeros in lista) {
    print('numero $numeros');
    suma += numeros;
    c++;
  }
  print('de $c numeros: la suma es $suma');

//suma de numeros de una lista
  print('Ingrese numeros separados por comas');
  var n = stdin.readLineSync();
  if (n != null) {
    try {
      //para string
      //List<String> concatenar = n.split('');
      //para double
      //List<double> decimales = n.split(',').map(double.parse).toList();
      // (split dividira los elementos cerando un array por lo que escribas'aqui')
      List<int> enteros = n.split(',').map(int.parse).toList();

      print(enteros);
      // usaremos reducer para realizar la operacion menos la division
      //int division_entera = enteros.reduce((a, b) => a ~/ b);
      //int multiplicacion = enteros.reduce((a, b) => a * b);
      //para dividir una lista skip(1) permitira obviar el primer elemento
      //e iterar los demas lapropiedad fold()se usa en ves de reducer
      //double division = enteros.skip(1).fold(enteros[0], (a, b) => a / b);
      int suma = enteros.reduce((a, b) => a + b);
      //para minimizar los decimales
      /*print(division.toStringAsFixed(2));*/
      print('La suma es: $suma');
    } catch (e) {
      print('Oh MyGucci!!: $e');
    }
  }
}




