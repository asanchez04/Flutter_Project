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
  void _removeCounter() {
    setState(() {
      
      counter--;
    });
    }
  void _restartCounter() {
    setState(() {
      
      counter = 0;
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          children:<Widget> [
          FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed:(){
            _removeCounter();
            print('this is your counter: $counter');
            showMessage();
          }),

          FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed:(){
            _restartCounter();
            print('this is your counter: $counter');
            showMessage();
          }),

          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed:(){
              _incrementCounter();
              print('this is your counter: $counter');
              showMessage();
            }),
          ],
          ));
  }

  void showMessage(){
    print('Hola Mundo');

  } 

}
