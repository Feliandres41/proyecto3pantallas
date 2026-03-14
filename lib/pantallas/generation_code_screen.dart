


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proyecto/datos/datos.dart';
import 'dart:math';

import 'package:proyecto/pantallas/splash_screen.dart';

class GenerationCodeScreen extends StatefulWidget{
  const GenerationCodeScreen({super.key});

  @override
  State<GenerationCodeScreen> createState() => _GenerationCodeScreenState();
}

class _GenerationCodeScreenState extends State<GenerationCodeScreen> {
  List listNumeros=[];
  int temporizador = 10;
  @override initState(){
    super.initState();
    genera();
    generadorNumeros();
    time();
  }

  Future <void> time()async{
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(temporizador==1){
        setState(() {
          temporizador=10;
        });
        
      }else{
        setState(() {
          temporizador-=1;
        });
        
      }
    },);
  }
  Future <void> generadorNumeros()async {
    Timer.periodic(Duration(seconds: 10), (timer) {
        if (listNumeros.isEmpty){
          genera();
        }
        else{
          listNumeros.clear();
          genera();
          setState(() {
          });
        }
    },);
  }
  void genera(){
    Random random = Random();
    for (int i=0;i<5;i++){
      setState(() {
        listNumeros.add(random.nextInt(9));
      });
      
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
            height: 80,
          ),
          Image(image: AssetImage('assets/img1_splash_screen 2.png')),
          Text('Generate Verification code',style: TextStyle(fontSize: 22),),
          SizedBox(
            height: 10,
          ),
          Text('Verify your account by entering these 5 digits',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w300),),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              // Text('${listNumeros}')
              Text('${listNumeros[0]}',style: TextStyle(fontSize: 20),),
              Text('${listNumeros[1]}',style: TextStyle(fontSize: 20),),
              Text('${listNumeros[2]}',style: TextStyle(fontSize: 20),),
              Text('${listNumeros[3]}',style: TextStyle(fontSize: 20),),
              Text('${listNumeros[4]}',style: TextStyle(fontSize: 20),),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Regenerating code in ',style: TextStyle(fontSize: 18,color: Colors.grey),),
              Text('${temporizador}s',style: TextStyle(color: Colors.green,fontSize: 18),)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/identification');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              
            ),
            child: Text('Next',style: TextStyle(color: Colors.white),),
          )

          ],
        ),
      ),
    );
  }
}