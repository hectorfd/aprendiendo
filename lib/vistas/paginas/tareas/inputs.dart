import 'package:flutter/material.dart';

class Inputs extends StatelessWidget{
  const Inputs({super.key});

  @override
  Widget build(BuildContext context) {
    	final Size screenSize = MediaQuery.of(context).size;
      final double scaleFactor = screenSize.width > 600 ? 1.5 : 1.0;
      double iconSize = screenSize.width > 600 ? 32.0 : 24.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Probando Inputs'),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Textfield', style: TextStyle(fontSize: scaleFactor * 22),),
            Center(
              child: SizedBox(
                width: 300 * scaleFactor,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    //tamaño
                    labelStyle: TextStyle(fontSize: scaleFactor * 25),
                    contentPadding:EdgeInsets.symmetric(vertical:5 *scaleFactor) ,
                  ),
                  style: TextStyle(fontSize: 18 * scaleFactor),
                ),
              ),
            ),

            SizedBox(height: 20 * scaleFactor,),
            Text('TextFormField', style: TextStyle(fontSize: scaleFactor * 22),),

            SizedBox(
              width: 300 * scaleFactor, // Ancho personalizado
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  labelStyle: TextStyle(fontSize: scaleFactor * 25),
                  contentPadding: EdgeInsets.symmetric(vertical: 20 * scaleFactor), // Padding interno
                ),
                style: TextStyle(fontSize: 18 * scaleFactor), // Tamaño de fuente
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un correo';
                  }
                  return null;
                },
              ),
            ), 
            SizedBox(height: 20 * scaleFactor,),
            Text('Checkbox', style: TextStyle(fontSize: scaleFactor * 22),),
            Transform.scale(
              scale: 1.5 * scaleFactor, // Escala del checkbox
              child: Checkbox(
                value: false,
                onChanged: (bool? newValue) {
                  // Manejar el cambio de estado
                },
              ),
            ),

            SizedBox(height: 20 * scaleFactor,),
            Text('Radio', style: TextStyle(fontSize: scaleFactor * 22),),
            Transform.scale(
              scale: 1.5 * scaleFactor, // Escala del radio button
              child: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (int? newValue) {
                  // Manejar el cambio de estado
                },
              ),
            ),
            SizedBox(height: 20 * scaleFactor,),
            Text('Dropdown', style: TextStyle(fontSize: scaleFactor * 22),),

            Container(
              width: 300 *scaleFactor, // Ancho personalizado
              child: DropdownButton<String>(
                value: 'Opción 1',
                items: <String>['Opción 1', 'Opción 2', 'Opción 3'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(fontSize: 18 * scaleFactor)), // Tamaño de fuente
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Manejar el cambio de selección
                },
              ),
            ),
            SizedBox(height: 20 * scaleFactor,),
            Text('Slider', style: TextStyle(fontSize: scaleFactor * 22),),
            Slider(
              value: 50,
              min: 0,
              max: 100,
              onChanged: (double newValue) {
                // Manejar el cambio de valor
              },
              activeColor: Colors.blue, // Color personalizado
              inactiveColor: Colors.grey, // Color personalizado
            )







          ],
        ),
      ),
    );
  }

}