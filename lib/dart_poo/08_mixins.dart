void main(List<String>args){
 Trabajador juan = Trabajador();
 juan.obtenerNombre();
 juan.calcular();
}

abstract class Persona{
  String? nombre;
  void obtenerNombre();
}
mixin Administrador{
  String? area;
  void calcular(){
  print('Calculando salario');
  }
}

class Trabajador extends Persona with Administrador{
  @override
  void obtenerNombre(){
    print('El nombre del trabajador');
  }
}