

import 'package:flutter/material.dart';
import 'package:proyecto/pantallas/about_screen.dart';
import 'package:proyecto/pantallas/code_screen.dart';
import 'package:proyecto/pantallas/identification_screen.dart';
import 'package:proyecto/pantallas/splash_screen.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>SplashScreen(),
        '/about':(context)=>AboutScreen(),
        '/codeScreen':(context)=>CodeScreen(),
        '/identificacionScreen':(context)=>IdentificationScreen()
      },
    );
  }
}