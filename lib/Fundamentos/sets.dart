void main(List<String> args) {
  var miSet = <String>['A','B','C'];
  print(miSet);

  //agregar
  miSet.add('D');
  print(miSet);
  //mostrar el elemento 2
  print(miSet.elementAt(2));
  var cantidad = miSet.length;
  print(cantidad);
  //remover una parte
  print(miSet.remove('A'));
  print(miSet);
  //eliminar todo el set
  miSet.clear();
  print(miSet);
}