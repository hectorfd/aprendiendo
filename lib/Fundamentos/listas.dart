void main(List<String> args) {
  var miLista = [10,14];
  var listaNumeros = ['Luis','Maria','Lucia'];
  print(miLista[1]);
  print(listaNumeros[2]);
  print('${miLista[0]}, ${listaNumeros[0]}');

  //lista de listas
  var listaDeListas = [
    [10,14],
    [listaNumeros],
    [12,5,16,3]
  ];
  var tall = listaDeListas.length;

  print('$tall');

  var acceder = listaDeListas[1][0];
  print('$acceder');
  
  miLista.add(5);
  print('$miLista');
//te da el ultimo elemento de la lista
  print(miLista.last);
  //para acceder a la ultima lista
  print(miLista[miLista.length -1]);
//invierte la posición de la lista
  print(miLista.reversed);
}