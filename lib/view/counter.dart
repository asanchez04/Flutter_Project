import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  
  const Contador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    int _counter = 0;
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
                "Number push",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '$_counter',
                style: siseText,
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(

          child: const Icon(Icons.access_alarms),
          onPressed:(){
            _counter++;
            showMessage();
          }));
  }

  void showMessage(){
    print('Hola Mundo');
  } 
  
}
