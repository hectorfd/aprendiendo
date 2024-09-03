
import 'dart:io';
void main(List<String>args){
const double pension = 1500;
double descuento,pago;
print('Ingrese el promedio del alumno');
var n = stdin.readLineSync();
if(n!=null){
  try{
    double promedio = double.parse(n);
    if(promedio > 20 || promedio<0){
      print('ingrese un rango correcto de 0 a 20');
    }else{
      if(promedio>=18 && promedio<= 20) {
      descuento = pension * 0.20;
      pago = pension - descuento;
      print('promedio: $promedio, descuento: 20%, Monto a pagar: S./$pago ');
      }else if(promedio>=16 && promedio< 18) {
        descuento = pension * 0.10;
        pago = pension - descuento;
        print('promedio: $promedio, descuento: 10%, Monto a pagar: S./$pago ');

      }else if(promedio<16 && promedio>= 14) {
        descuento = pension * 0.05;
        pago = pension - descuento;
        print('promedio: $promedio, descuento: 5%, Monto a pagar: S./$pago ');
      }else{
        print('promedio: $promedio, no se hizo ningún descuento');
      }

    }

  }catch(e){
    print('Oh MyGucci!!');
  }
}
}