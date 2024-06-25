//clase molde
class Animal{
  void hacerSonido(){
    print('El animal hace un sonido');
  }
}
//herencia
class Perro extends Animal{
  @override
  void hacerSonido(){
    print('El perro Ladra');
  }
}
void main(List<String>args){
 Perro miPerro = Perro();
 miPerro.hacerSonido();
}