import 'package:flutter/material.dart';

class Imc extends StatefulWidget{
  const Imc({super.key});

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {

  //datos de ingreso
  double _peso = 75.0;
  double _altura = 175.0;
  String _resultado = '';
  String _recomendacion = '';
  double _imc = 0;
  //métodos
  void _calcularImc(){
    setState(() {
      _imc = _peso / ((_altura/100) * (_altura/100));
      if(_imc < 18.5){
        _resultado = 'Bajo peso';
        _recomendacion = 'Necesitas aumentar tu peso, consulta a un medico nutricionista';
        }else if(_imc >= 18.5 && _imc < 25){
          _resultado = 'Normal';
          _recomendacion = 'Estas muy bien, sigue asi, realiza actividad física';
          }else if(_imc >= 25 && _imc < 30){
            _resultado = 'Sobrepeso';
            _recomendacion = 'Necesitas bajar de peso, realiza mas actividad fisica.';
          }else{
            _resultado = 'Obesidad';
            _recomendacion = 'Es importante que bajes de peso, consulta a un nutricionista';

          }
      });
      }

      String _getImagePath() {
        switch (_resultado) {
          case 'Bajo peso':
            return 'assets/images/image3.png';
          case 'Normal':
            return 'assets/images/image1.png';
          case 'Sobrepeso':
            return 'assets/images/image2.png';
          case 'Obesidad':
            return 'assets/images/image4.png';
          default:
            return '';
        }
      }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
    double iconSize = screenSize.width > 600 ? 32.0 : 24.0;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60 * scaleFactor,
        title: Padding(
          padding: EdgeInsets.all(20 * scaleFactor),
          child: Text('IMC', style: TextStyle(fontSize: scaleFactor * 25, color: Colors.white, fontWeight: FontWeight.w600),),
        ),
        
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: (){
              //navigation pop
              Navigator.pop(context);
            },
             icon: Icon(Icons.arrow_back, size:iconSize * 1.7 , color: Colors.white,),
             ),
        ),
        centerTitle: true,
        backgroundColor:const Color(0xFF2B2D42),

      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20 * scaleFactor),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Bienvenido, selecciona tu peso y altura',
                   style: TextStyle(fontSize: scaleFactor * 20),
                   ),
                   ],
              ),
              
              SizedBox(height: 20 * scaleFactor,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${_peso.toInt()}', style: TextStyle(fontSize: 30*scaleFactor, fontWeight: FontWeight.w400),),
                  Padding(
                    padding: EdgeInsets.only(top: 8 * scaleFactor),
                    child: Text('kg', style: TextStyle(fontSize:scaleFactor * 18, color: const Color(0xFF555768), fontWeight: FontWeight.w300 ),),
                  ),
                ],
              ),
              
              SizedBox(height: 20 * scaleFactor,),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.pink,
                  inactiveTrackColor: Colors.grey[500],
                  trackHeight: 9 * scaleFactor,  
                  thumbColor: Colors.pink,
                  overlayColor: Colors.pink.withAlpha(32),
                  thumbShape:const RoundSliderThumbShape(enabledThumbRadius: 22.0),
                  overlayShape:const RoundSliderOverlayShape(overlayRadius: 34.0),
                ),
                
                child: Slider(
                  value: _peso,
                  min: 30,
                  max: 150,
                  divisions: 110,
                  
                  onChanged: (value) {
                    setState(() {
                      _peso = value;
                    });
                  },
                ),
              ),
        
              //segundo slider
              
              SizedBox(height: 20 * scaleFactor,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${_altura.toInt()}', style: TextStyle(fontSize: 30*scaleFactor, fontWeight: FontWeight.w400),),
                  Padding(
                    padding: EdgeInsets.only(top: 8 * scaleFactor),
                    child: Text('cm', style: TextStyle(fontSize:scaleFactor * 18, color: const Color(0xFF555768), fontWeight: FontWeight.w300 ),),
                  ),
                ],
              ),
              
              SizedBox(height: 20 * scaleFactor,),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.pink,
                  inactiveTrackColor: Colors.grey[500],
                  trackHeight: 9 * scaleFactor,  
                  thumbColor: Colors.pink,
                  overlayColor: Colors.pink.withAlpha(32),
                  thumbShape:const RoundSliderThumbShape(enabledThumbRadius: 22.0),
                  overlayShape:const RoundSliderOverlayShape(overlayRadius: 34.0),
                ),
                
                child: Slider(
                  value: _altura,
                  min: 100,
                  max: 250,
                  divisions: 120,
                  
                  onChanged: (value) {
                    setState(() {
                      _altura = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 30 * scaleFactor,),
              //boton
             Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _calcularImc,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10 * scaleFactor)),
                        backgroundColor: const Color(0xFF2B2D42),
                        padding: EdgeInsets.symmetric(horizontal: 1 * scaleFactor, vertical: 1 * scaleFactor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_right_rounded , size: iconSize * 2.5, color: Colors.white,),
                          //SizedBox(width: 8 * scaleFactor), 
                          Text('Calcular', style: TextStyle(fontSize: 22 * scaleFactor, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20 * scaleFactor,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Resultado:',style: TextStyle(fontSize: scaleFactor * 20),),
                ],
              ),
              if(_resultado.isNotEmpty)
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(_getImagePath(), height: 300 * scaleFactor),
                    const SizedBox(height: 10),
                    Text(_imc.toStringAsFixed(1), style: TextStyle(fontSize: scaleFactor * 43, color: Colors.pink, fontWeight: FontWeight.w600),),
                    Text(_resultado, style: TextStyle(fontSize: scaleFactor * 20),),
                    Text(_recomendacion, style: TextStyle(fontSize: scaleFactor * 16),)
                    
                  ],
                ),  
            ],
          
          ),
        ),
      ),

      

    );
  }
}