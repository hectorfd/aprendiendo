
//Crea una clase llamada Cuenta que tendrá los siguientes atributos:
// titular (que es una persona) y cantidad (puede tener decimales).
// El titular será obligatorio y la cantidad es opcional.
// Construye los siguientes métodos para la clase:
// Un constructor, donde los datos pueden estar vacíos.
// Los setters y getters para cada uno de los atributos.
// El atributo no se puede modificar directamente, sólo ingresando o
// retirando dinero. mostrar(): Muestra los datos de la cuenta.
// ingresar(cantidad): se ingresa una cantidad a la cuenta,
// si la cantidad introducida es negativa, no se hará nada.
// retirar(cantidad): se retira una cantidad a la cuenta.
// La cuenta puede estar en números rojos.
class Persona {
  String nombre;

  Persona(this.nombre);
}
class Cuenta {
  Persona titular;
  double cantidad;

  Cuenta({required this.titular, this.cantidad = 0.0});


  Persona get getTitular => titular;
  double get getCantidad => cantidad;

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      print('Se ha ingresado S./$cantidad');
    } else {
      print('Error: no se pueden ingresar valores negativos');
    }
  }

  void retirar(double cantidad) {
    this.cantidad -= cantidad;
    print('Se ha retirado S./$cantidad');
  }

  void mostrar() {
    print('Titular: ${titular.nombre}');
    print('Cantidad: S./$cantidad');
  }
}

void main() {
  var persona1 = Persona('Heron');
  var cuenta1 = Cuenta(titular: persona1);
  cuenta1.mostrar();
  cuenta1.ingresar(100);
  cuenta1.retirar(20);
  cuenta1.mostrar();
}
