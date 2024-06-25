import 'dart:collection';

void main(List<String>args){
  print('Colas');
  Queue miCola = new Queue();
  miCola.add(10);
  miCola.add(20);
  miCola.add(50);

  print(miCola);
  print(miCola.last);
  miCola.add(100);
  miCola.addFirst(1);
  print(miCola);
  miCola.removeLast();
  print(miCola);
}