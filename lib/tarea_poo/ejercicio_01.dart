void main(List<String>args){
  var cuentaJuan = Cuenta('Juan Jose', 2000);
  print('Tenias xd: ${cuentaJuan.cantidad}');
  cuentaJuan.ingresar(500);
  print('Ahra tienes: ${cuentaJuan.cantidad}');
  cuentaJuan.retirar(100);
  print('Te queda: ${cuentaJuan.cantidad}');
}

class Cuenta{
  String? titular;
  double cantidad = 0;

  Cuenta(String titular, double cantidad ){
    this.titular = titular;
    this.cantidad = cantidad;
  }

  void ingresar(double cantidad){
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
  void retirar(double cantidad){
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
}
