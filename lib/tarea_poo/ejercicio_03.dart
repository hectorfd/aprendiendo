//Crea una clase Cuenta con los atributos nombre, dni y cantidad también
// con los métodos ingreso, reintegro y transferencia. La clase contendrá
// un constructor por defecto, un constructor con parámetros, los métodos getters y setters.
class Cuenta{
  String nombre;
  String? dni;
  double cantidad = 0;

Cuenta(this.nombre, this.dni, this.cantidad);

  void ingreso(double cantidad){
    try{
      if(cantidad > 0){
        this.cantidad += cantidad;
        print('Se ha ingresado S./$cantidad');
      }else {
        print('error valores negativos');
      }
    }catch(e){
      print('error $e');
    }
  }

  void reintegro(double cantidad){
    try{
      if(cantidad > 0){
        if(this.cantidad - cantidad>=0){
          this.cantidad -= cantidad;
          print('Se retiro S./$cantidad');
        }
      }else {
        print('error no se puede retirar');
        this.cantidad = 0;
      }
    }catch(e){
      print('error $e');
    }
  }

  void transferencia(Cuenta cuentaDestino, double cantidad) {
    try {
      if (cantidad > 0) {
        if (this.cantidad >= cantidad) {
          this.cantidad -= cantidad;
          cuentaDestino.ingreso(cantidad);
          print('Se ha transferido S./$cantidad a ${cuentaDestino.nombre}');
        } else {
          print('Error: no hay suficiente saldo para transferir S./$cantidad');
        }
      } else {
        print('Error: no se pueden transferir valores negativos');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  String get getNombre => nombre;
  set setNombre(String nombre) => this.nombre = nombre;

  double get getCantidad => cantidad;
  set setCantidad(double cantidad) => this.cantidad = cantidad;

}
void main(List<String>args){
  var cuenta1 = Cuenta('Harry', '73343434', 2000);
  var cuenta2 = Cuenta('Dexter', '71321411', 0);

  cuenta1.ingreso(500);
  print('La cuenta de: ${cuenta1.nombre} tiene: S./${cuenta1.cantidad}');
  cuenta1.transferencia(cuenta2, 500);
  cuenta2.reintegro(500);
}