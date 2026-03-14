


import 'package:flutter/material.dart';
import 'package:proyecto/datos/datos.dart';

class VerificationScreen extends StatefulWidget{
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
final String name= Datos.name;
final String amount= Datos.mount;


final _formKey = GlobalKey<FormState>();
final _numOneController = TextEditingController();
final _numTwoController = TextEditingController();
final _numThreeController = TextEditingController();
final _numFourController = TextEditingController();
final _numFiveController = TextEditingController();
@override
  void dispose(){
    super.dispose();
    _numOneController.dispose();
    _numTwoController.dispose();
    _numThreeController.dispose();
    _numFourController.dispose();
    _numFiveController.dispose();
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
            Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(left: 90),child: 
                Text('Hello ',style: TextStyle(fontSize: 25),),),
                Text('${name}!!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)

                
              ],
            ),
            Text('Verify your cellphone entering the 5 digits code',style: TextStyle(color: Colors.grey,fontSize: 17),),
            Form(
              key: _formKey,
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 35,
              children: [
                Expanded(child: TextFormField(
                  controller: _numOneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                )),
                Expanded(child: TextFormField(
                  controller: _numTwoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                )),
                Expanded(child: TextFormField(
                  controller: _numThreeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                )),
                Expanded(child: TextFormField(
                  controller: _numFourController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                )),
                Expanded(child: TextFormField(
                  controller: _numFiveController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),                    
                  ),
                )),
              ],
            )),ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()){
                  Datos.codigo.add(_numOneController.text);
                  Datos.codigo.add(_numTwoController.text);
                  Datos.codigo.add(_numThreeController.text);
                  Datos.codigo.add(_numFourController.text);
                  Datos.codigo.add(_numFiveController.text);
                }
              },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              
            ),
              child: Column(
               
              )
            )

            
          ],
        ),
      ),
    );
  }
}