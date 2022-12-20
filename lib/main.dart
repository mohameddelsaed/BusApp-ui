import 'package:bus_app/pages/Screen_One.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp.busApp());
}

class MyApp extends StatelessWidget {
  const MyApp.busApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        'screenOne' :(context) => const ScreenOne(),
      } ,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: Scaffold(
        body:  ScreenOne(),
        ),
      ),
    );
  }
}


