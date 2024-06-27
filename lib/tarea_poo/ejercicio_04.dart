
//Crea una clase Contador con el atributo contador y con los métodos
// para incrementar y decrementar el contador. La clase contendrá
// un constructor por defecto, un constructor con parámetros,
// y los métodos getters y setters.

class Contador{
  int contador;

  Contador(this.contador);

  int get miContador{
    return contador;
  }
  set miContador(int count){
    contador = count;
  }

  void incrementar(){
    contador += 1;
  }
  void decrementar(){
    contador -= 1;
  }
}

void main(List<String>args){
  var contador1 = Contador(0);

  while(contador1.miContador < 5){
    contador1.incrementar();
  }
  print('contador = ${contador1.miContador}');

  contador1.decrementar();
  contador1.decrementar();
  print('contador = ${contador1.miContador}');
}