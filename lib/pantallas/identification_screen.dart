


import 'package:flutter/material.dart';

class IdentificationScreen extends StatelessWidget{
  const IdentificationScreen({super.key});

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
          ],
        ),
      ),
    );
  }
}