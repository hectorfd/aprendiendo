// Escribe un programa que lea una lista de números
// y elimine los elementos duplicados, dejando solo una aparición
// de cada número.
import 'dart:io';
void main(List<String>args){
 print('ingrese numeros separados por comas');
 var array = stdin.readLineSync();
 if(array!=null){
   List<int> enteros = array.split(',').map(int.parse).toList();
   print(enteros);
   Set<int> sinDuplicados = enteros.toSet();
   print(sinDuplicados);
   List<int> lista = sinDuplicados.toList();
   print(lista);
   //ordena los elementos de la lista
   lista.sort();
   print(lista);

 }
}