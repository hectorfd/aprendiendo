abstract class Forma {
  double? area;

  void calcular();
}

class Cuadrado extends Forma {
  double base;
  double altura;

  Cuadrado(this.base, this.altura);

  @override
  void calcular() {
    area = base * altura;
    print('Área del cuadrado: $area');
  }
}

void main() {

  Cuadrado cuadrado = Cuadrado(5, 5);
  cuadrado.calcular();
}
