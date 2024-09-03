class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);
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

class CuentaJoven extends Cuenta {
  double bonificacion;
  CuentaJoven({required super.titular, super.cantidad, this.bonificacion = 0.0});
  double get getBonificacion => bonificacion;
  set setBonificacion(double bonificacion) {
    this.bonificacion = bonificacion;
  }
  bool esTitularValido() {
    return titular.edad >= 18 && titular.edad < 25;
  }

  @override
  void retirar(double cantidad) {
    if (esTitularValido()) {
      super.retirar(cantidad);
    } else {
      print('Error: El titular no es válido para retirar dinero');
    }
  }

  @override
  void mostrar() {
    super.mostrar();
    print('Cuenta Joven');
    print('Bonificación: $bonificacion%');
  }
}

void main() {
  var persona = Persona('Jose', 20);
  var cuentaJoven = CuentaJoven(titular: persona, bonificacion: 10);
  cuentaJoven.mostrar();
  cuentaJoven.ingresar(2000);
  cuentaJoven.retirar(500);
  cuentaJoven.mostrar();
}
