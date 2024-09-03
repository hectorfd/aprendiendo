void main(List<String> args) {
  //Enteros
  int uno = 1;
  int dos;
  const tres = 3;
  var cuatro = 4;
  dynamic cinco = 5;
  print('$uno, ${dos = 2} $tres, $cuatro, $cinco');
  
  //Decimales
  double decimales = 1.4567;
  print('S/.$decimales');

  // booleanos
  bool verdad = true;
  print('$verdad');

  bool mayor;
  mayor = 3 >= 5;
  print('$mayor');

  const igual = 'hola'=='hola';
  print('hola = hola -> $igual');

  //concatenación
String var1 = 'n1';
String var2 = 'n2';
print('$var1, $var2');
}