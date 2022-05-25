import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState(); 
}

class _ContadorState extends State<Contador> {

  int counter = 0;
  void _incrementCounter() {
    setState(() {
      
      counter++;
    });
    }

  @override
  Widget build(BuildContext context) {
    
  
    const siseText = TextStyle(fontSize: 24);



    return Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          backgroundColor: const Color.fromARGB(255, 241, 222, 222),
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              const Text(
                "Number pushing",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Counter: $counter',
                style: siseText,
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(

          child: const Icon(Icons.add),
          onPressed:(){
            _incrementCounter();
            print('this is your counter: $counter');
            showMessage();
          }));
  }

  void showMessage(){
    print('Hola Mundo');

  } 

}
