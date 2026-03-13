

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proyecto/pantallas/about_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {
  int temporizador =4;
  bool salir = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(temporizador==0){
        timer?.cancel();
        Navigator.pushNamed(context, '/about');
        
      }else{
        setState(() {
          temporizador--;
        });
      }
      
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Center(child:  
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: BoxBorder.all(color: Colors.white),
            borderRadius: BorderRadius.circular(50)
          ),
          child: 
            Text('${temporizador}s',
            style: TextStyle(color: Colors.white,fontSize: 30),)
        ),)
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/img_men_background 2.png'),
            fit: BoxFit.cover)
          ),child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/img_logo 2.png')),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/img_security 2.png')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('100% Safe & Secure',style: TextStyle(color: Colors.white),)
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Copyright @ 2025 paycard all rights reserved',style: TextStyle( color: Colors.white),)
              ],
            ),
          )

        ),
      ),
    );
  }
}