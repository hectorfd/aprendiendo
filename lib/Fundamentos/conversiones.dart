void main(List<String> args) {
  String texto = '100';
  int cien = int.parse(texto);
  int n2 = 200;
  int suma = cien + n2;
  print('La suma es: $suma');

  double decimal = 100.3452;
  String text = decimal.toStringAsFixed(2);
  print(text);
//convertir dentro de sets
  var miSet = <int>[n2, int.parse(texto)];
  print(miSet); 
}