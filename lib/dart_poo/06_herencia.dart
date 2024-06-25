//Herencia

void main(List<String>args){
  Conductor Hector = Conductor();
  Hector.nombre;
  Hector.salario;
  Hector.manejar();
  Ayudante Juan = Ayudante();
  Juan.gestionar();
}

// padre
class Trabajador{
  String? nombre;
  double? salario;
  void calcularSalario(){
    print('calcular salario');
  }
}
//hijo
class Conductor extends Trabajador{
  String? vehiculoAsignado;
  void manejar(){
    print('Manejando');
  }
}
//otro hijo
class Ayudante extends Trabajador{
  String? area;
  void gestionar(){
    print('gestionando');
  }
}
