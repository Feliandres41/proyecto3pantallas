

import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';
class CodeScreen extends StatefulWidget{
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
List<int> nums=[];
@override
void initState(){
  super.initState();
  generarNumeros();
}

int temporizador = 10;
bool estado = false;

void generarNumeros() {
  Timer.periodic(Duration(seconds: 1,),(timer) {
    if(temporizador==0){
      setState(() {
        nums.clear();
        reinicio();
        temporizador=10;
      });
    }else{
      setState(() {
        temporizador--;
      });
      
    }
  },);
  reinicio();
}
void reinicio(){
  final random = Random();
  for (int i = 0; i < 5; i++) {
    int numero = random.nextInt(9); // 0 a 99
    setState(() {
      nums.add(numero);
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
              height: 50,
            ),
            Image(image: AssetImage('assets/img1_splash_screen 2.png')),
            SizedBox(
              height: 30,
            ),
            Text('Generate Verification code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(
              height: 15,
            ),
            Text('Verify your account by entering these 5 digits',style: TextStyle(color: Colors.grey,fontSize: 20),),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: nums.map((numeros){
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '$numeros',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              }).toList()
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Regenerating code in ',style: TextStyle(color: Colors.grey,fontSize: 20),),
                Text('${temporizador}s',style: TextStyle(color: Colors.green,fontSize: 20),)
              ],
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/identificacionScreen');
              },style: ElevatedButton.styleFrom(
                minimumSize: Size(200,40),
                backgroundColor: Colors.red
              ),
              child: Text('Next',style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}

