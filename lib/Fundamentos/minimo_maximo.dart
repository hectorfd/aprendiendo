void main(List<String>args){
  var lista = [3,5,7,8,2,1,23,67];
  //calcular maximo
  var maximo = 0;
  for(var numero in lista){
    if(maximo < numero){
      maximo = numero;
    }
    print('Ciclo $maximo $numero');
  }
  print('el maximo es $maximo');
// calcular el minimo
int minimo;
for(var numero2 in lista){
  if(minimo == null || minimo > numero2){
    minimo = numero2;
  }
  print('ciclo $minimo $numero2');
}
print('El minimo es $minimo');
}