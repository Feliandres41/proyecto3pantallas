

import 'package:flutter/material.dart';
import 'package:proyecto/rutas/rutas.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Rutas.rutaInicial,
      routes: Rutas.rutasBarril,
    );
  }
}