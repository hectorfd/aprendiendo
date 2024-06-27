void main(List<String>args){
  var n = 0;
  do{
    print(n);
    n++;
  }while(n<5);
  print('final de do while');
  //switch
  switch(n){
    case 5:
      print('imprimiste 5 elementos');
      break;
    default:
      print('suave bro');
  }
  //Strings
  String texto = 'esto es un texto';
  print(texto);
  //de entero a string
  var n2 = 123;
  String texto2 = n2.toString();
  print(texto2);
  //para saber si la variable esta vacia
  String nombre = ' Hector';
  print(nombre.isEmpty);
  //mayusculas
  print(nombre.toUpperCase());
  //minusculas
  print(nombre.toLowerCase());
  // eliminar espacios
  print(nombre.trim());
  // para comparar valores similares
  print(nombre.compareTo('tor'));
  //para reemplzar el texto
  print(nombre.replaceAll('tor', 'titor'));
  //desde donde debe iniciar a imprimir (inicio,final)
  print(nombre.substring(3,6));
  //retorna verdadero si encuentra los caracteres
  print(nombre.contains('o'));
  //indica si el texto inicia con espcios y un caracter o varios
  print(nombre.startsWith(' H'));
  print(nombre.endsWith('r'));
  //para dividir el texto en lo que queramos
  List<String> name = nombre.split('').toList();
  for(var lista in name){
    print(lista);
  }
}

