void main(List<String>args){
  List lista = [1,2,3,4,5,6,7,8,9];
  print(lista);

  // limpiar una lista
  lista.clear();
  print('limpiar lista');
  print(lista);
  //obtener el primer valor de la lista
  lista = [1,2,3,4,5,6,7,8,9];
  print('el primer valor: ${lista.first}');
  
  //obtener el ultimo valor de una lista
  print('el ultimo valor: ${lista.last}');

  // obtener el tamaño de una lista
  print(lista.length);
  // cambiar el orden de la lista
  print(lista.reversed);
  //quedarnos con un trozo de la lista
  print(lista.sublist(4,6));
  //eliminar el ultimo valor
  print(lista.removeLast());
  //eliminar por su valor
  print(lista.remove(2));
  // eliminar por su posición
  print(lista.removeAt(3));
  //comprobar si esta vacía
  print(lista.isEmpty);
  //obtener el indice de un valor
  print(lista.indexOf(6));
  // comprobar si contiene un valor
  print(lista.contains(8));
  //concatenar listas por un caracter o texto
  print(lista.join(' joder '));
  lista = [1,2,3,4,5,6,7,8,9];
  //rellenar contenido -> (start, end, contenido)
  lista.fillRange(3, 8, 10);
  print(lista);
  //comprobar el tipo de valor
  print(lista.runtimeType);


}