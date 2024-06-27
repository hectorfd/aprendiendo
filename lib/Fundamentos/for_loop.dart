void main(List<String>args){
  var iterar = 10;
  //contar hacia arriba
  for(var i = 0; i <=iterar;i++){
    print(i);
  }
  //contar hacia abajo
  for(var i = 0; i<=iterar;i++){
    print(iterar - i);
  }
  // listas
  var lista = ['hector','Felix','David', 'Andrea'];
  for(var i = 0; i<lista.length;i++){
    print('Feliz Navidad Para ${lista[i]}');
  }
  //otro tipo de for
  for(var nombre in lista){
    print('Feliz año nuevo $nombre');
  }
}