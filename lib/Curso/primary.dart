void main(List<String>args){
  int n1 = 2;
  int n2 = 2;
  print('Funciones');
  //sin retorno
  var mensaje = msn();
  print('el dia de hoy: $mensaje');
  //con retorno
  print(numero());
  //funcion tradicional
  String name = 'Hector';
  miFuncion(name);
  print('la suma es : ${suma(n1, n2)}');
}
msn(){
  return 'tengo sueño';
}
//con retorno
int numero(){
  var n = 1;
  return n;
}
miFuncion(String name){
  print('nombre:$name');
}
int suma(int a,int b){
  return a + b;
}