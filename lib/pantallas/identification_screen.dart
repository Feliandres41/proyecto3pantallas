

import 'package:flutter/material.dart';
import 'package:proyecto/datos/datos.dart';
import 'package:proyecto/pantallas/verification_screen.dart';

class IdentificationScreen extends StatefulWidget{
  const IdentificationScreen({super.key});

  @override
  State<IdentificationScreen> createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
  static String name ='';
  static String mount = '';
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose(){
    super.dispose();
    _nameController.dispose();
    _amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/generationCode');
          },icon: Icon(Icons.arrow_back),
        ),

      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image(image: AssetImage('assets/img1_splash_screen 2.png')),
            Text("What's your name?",style: TextStyle(fontSize: 22),),
            SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Full name'
                  ),
                  validator: (value) => 
                  value==null || value.isEmpty
                  ? 'Ingrese su nombre'
                  :null,
                  
                ),
                TextFormField(
                  controller: _amountController,
                  decoration: InputDecoration(
                    labelText: 'Initial amount'
                  ),
                  validator: (value) => 
                  value==null || value.isEmpty
                  ? 'Ingrese el monto'
                  :null,
                )
              ],
            )),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
            onPressed: () async{
              if (_formKey.currentState!.validate()){
                
              Datos.name=_nameController.text;
              Datos.mount=_amountController.text; 

              // Navigator.pushNamed(context, '/verification');
              Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen(),));
              }
            
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