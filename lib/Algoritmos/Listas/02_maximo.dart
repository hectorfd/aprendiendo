//Escribe un programa que lea una lista de números enteros
// y encuentre el valor máximo en la lista.
import 'dart:io';
void main(List<String>args){
print('ingrese numeros enteros separados por comas');
var n = stdin.readLineSync();
if(n!=null){
  try{
    List<int> enteros = n.split(',').map(int.parse).toList();
    int maximo = enteros.reduce((a,b)=> a > b?a:b);
    int minimo = enteros.reduce((a,b)=> a < b?a:b);
    print('El numero maximo de la lista es:$maximo');
    print('El numero minimo de la lista es:$minimo');
  }catch(e){
    print('Oh MyGucci!!: $e');
  }
}
}