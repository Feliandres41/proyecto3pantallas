

import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
  int temporizador = 3;
@override

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    temporizado();
  }
  Future<void> temporizado() async {
  Timer.periodic(Duration(seconds: 1), (timer) {
    if(temporizador==0){
      setState(() {
        timer.cancel();
        Navigator.pushNamed(context, '/aboutScreen');
      });
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
        actions: [
          Container(

            width: 60,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(50),
              border: BoxBorder.all(color: Colors.white,width: 2)

            ),child: Text('${temporizador}s',style: TextStyle(
              color: Colors.white,
              fontSize: 27
              ),),
          )
        ],

      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/img_men_background 2.png'),fit: BoxFit.cover)
          ),
          child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/img_logo 2.png'),
              width: 200,),
              SizedBox(
                height: 80,
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
                height: 50,
              ),
              Text('Copyright @ 2025 paycard all rights reserved',style: TextStyle(color: Colors.white),)
            ],
          ),
          )
        ),
      ),
    );
  }
}