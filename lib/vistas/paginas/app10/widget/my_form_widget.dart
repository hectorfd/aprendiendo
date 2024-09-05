import 'package:flutter/material.dart';

class MyformWidget extends StatefulWidget {
  const MyformWidget({super.key});

  @override
  State<MyformWidget> createState() => _MyformWidgetState();
}

class _MyformWidgetState extends State<MyformWidget> {
  @override
  Widget build(BuildContext context) {
    bool isFinished=false;
    return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Agregar Tarea"),
            TextField(
              decoration: InputDecoration(hintText: "Ingrese la tarea"),
              ),
              SizedBox(height: 6,),
              TextField(
                maxLines: 2,
              decoration: InputDecoration(hintText: "Descripción"),
              ),
              SizedBox(height: 6,),
              Row(
                children: [
                  Text("Estado"),
                  Checkbox(value: isFinished, onChanged: (value){
                    isFinished = value!;
                    setState(() {
                    });
                  }),
                ],
              ),
              SizedBox(height: 6,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        backgroundColor:const Color(0XFFEA4335),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), 
                        ), 
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      label: Text("Cancelar",style: TextStyle(color: Colors.white),),
                      
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Aceptar",style: TextStyle(color: Colors.black45),),
                    ),
                  ],
              ),



          ],
        ),
      );
  }
}