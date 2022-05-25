import 'package:flutter/material.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({Key? key}) : super(key: key);

  @override
  _ColorChangeState createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  bool colores = true;
  void _ChangeColor() {
    setState(() {
      colores = !colores;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          backgroundColor: (colores == false) ? const Color.fromARGB(255, 241, 222, 222) : 
                                                 const Color.fromARGB(255, 209, 6, 6),
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CHANGE TEXT COLOR',
                style: (colores == false)
                    ? Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black)
                    : Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.orangeAccent),
              ),
              Text(
                'SOY UN TEXTO 2',
                style: (colores == false)
                    ? Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black)
                    : Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.orangeAccent),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: (colores == false) ? const Icon(Icons.color_lens): const Icon(Icons.sports_soccer),
            onPressed: () {
              _ChangeColor();
              showMessage();
            }));
  }

  void showMessage() {
    print('Hola Mundo');
  }
}
