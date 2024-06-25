void main(List<String>args){
  var gastos = [1.23,4.5,200.123,2.23];
  int i = 0;
  double suma=0;
  for(var gasto in gastos){
    i++;
  }
  print('El numero total de gastos $i');
  for(var total in gastos){
    suma += total;
  }
  var sumString = suma.toStringAsFixed(2);
  print('La suma total de gastos es:$sumString');
}