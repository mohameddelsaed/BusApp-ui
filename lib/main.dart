import 'package:bus_app/pages/Screen_One.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp.BusApp());
}

class MyApp extends StatelessWidget {
  const MyApp.BusApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        'screenOne' :(context) => ScreenOne(),
      } ,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        body:  ScreenOne(),
        ),
      ),
    );
  }
}


