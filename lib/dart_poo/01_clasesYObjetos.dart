void main(){

}
//molde
class Telefono{
  //atributos
  String marca;
  String numero;
  bool cargaRapida;
  //constructores
Telefono(this.marca, this.numero, this.cargaRapida);
//metodos
void llamar(){
  print('el fono esta llamando');
}
String obtenerNumero(){
  return numero;
}
}
