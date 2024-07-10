import 'package:flutter/material.dart';

class Alert extends StatelessWidget{
  const Alert({super.key});

  showMyAlert1(BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return   AlertDialog(
          title: const Text('titulo'),
          backgroundColor: Colors.yellow,
          content: Text('Mollit nisi ullamco magna ex in enim reprehenderit aute veniam proident aliqua laboris.'),
          actions: [
            OutlinedButton(onPressed: (){
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: Colors.white,
            ), 
            child:const Text('Cancelar')
            ),
            OutlinedButton(onPressed: (){
              
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: Colors.white,
            ),  
            child:const Text('Aceptar'),
            ),
          ],
        );
      }
      );
  }
  //segundo alert
  showMyAlert2(BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          
          title: const Text(
            'Blog post published',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
           icon: const Icon(Icons.border_left, color: Colors.green, size: 100.0
          ),
          backgroundColor: Colors.white,
          content:const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            

              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Mollit nisi ullamco magna ex in enim reprehenderit aute veniam proident aliqua laboris.',
                ),
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: Colors.white,
              ),
              child: const Text('Cancelar'),
            ),
            OutlinedButton(
              onPressed: () {
                
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text(
                'Aceptar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );

      }
      );
  }
  //alert 3
  showMyAlert3(BuildContext context){
    return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        // title: const Text(
        //   'Your video has been uploaded!',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/persona1.jpg', 
              height: 300.0,
            ),
            
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 0),
                Expanded(
                  child: Text(
                    'Your video has been uploaded!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 0),
                Expanded(
                  child: Text(
                    'You are video has finished uploading and is live',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 0),
                Expanded(
                  child: Text(
                    'Share link',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 0),
                 Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      // prefixIcon: Icon(
                      //   Icons.search,
                      //   size: 25,
                      // ),
                      hintText: 'untitledui.com/videos/porno',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                
                IconButton(
                  onPressed: (){
                    
                  },
                  icon:const Icon(Icons.copy),
                  
                  ),
                  Title(color: Colors.black, child: const Text('copy link'))
              ],
              
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: Colors.white,
            ),
            child: const Text('Skip'),
          ),
          OutlinedButton(
            onPressed: () {
              
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
    },
  );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title:const Text('Alert'),
        centerTitle: true,
        backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                showMyAlert1(context);
              }, 
              child:const Text('Alert 1'),
              ),
              ElevatedButton(onPressed: (){
                showMyAlert2(context);
              }, 
              child:const Text('Alert 2'),
              ),
              ElevatedButton(onPressed: (){
                showMyAlert3(context);
              }, 
              child:const Text('Alert 3'),
              ),
            ],
          ),
        ),
    );
  }

}