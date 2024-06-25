void main(){
 Telefono miTelefono = Telefono('Chanchung', '968197145', true);
 Telefono seTelefono = Telefono('Lg', '988342321', false);
 print(miTelefono);
 print(seTelefono.marca);
 print(miTelefono.marca);
 miTelefono.llamar();
 String num = miTelefono.obtenerNumero();
 print(num);
 Telefono aple = Telefono('apple', '964234332', false);
 print(aple);
}
//molde
class Telefono{
  //atributos
  String marca;
  String numero;
  bool cargaRapida;
  //constructores
  Telefono(this.marca, this.numero, this.cargaRapida);
  @override
  String toString(){
    return 'Telefono(marca: $marca, numero: $numero, carga: $cargaRapida )';
  }
//metodos
  void llamar(){
    print('el fono esta llamando');
  }
  String obtenerNumero(){
    return numero;
  }
}