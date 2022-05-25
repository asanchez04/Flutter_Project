import 'package:flutter/material.dart';
// import 'package:flutter_application_1/view/home_view.dart';
// import 'package:flutter_application_1/view/counter.dart';
// import 'package:flutter_application_1/view/count_screen.dart';
import 'package:flutter_application_1/view/change_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ColorChange());
  }
}
