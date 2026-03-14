

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget{
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image(image: AssetImage('assets/img1_splash_screen 2.png')),
          Text('Welcome to Paycard',style: TextStyle(fontSize: 30),),
          Text('I provide essential stuff for your',style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.w200),),
          Text('ui design every tuesday!',style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.w200),),
          Column(
            children: [
              Row(
                children: [
                  Image(image: AssetImage('assets/img_arraw_top 4.png'),width: 40,),
                  Text('Send and receive money'),
              ]),
              Row(
            children: [
              Image(image: AssetImage('assets/img_arraw_top 4.png'),width: 40,),
              Text('Pay bills'),
              
            ],
          ),
          Row(
            children: [
              Image(image: AssetImage('assets/img_arraw_top 4.png'),width: 40,),
              Text('Explore exciting offers')
            ],
          )
              
            ],
          ),
          Column(
            children: [

            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/generationCode');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              
            ),
            child: Text('Next',style: TextStyle(color: Colors.white),),
          )
          
          
        ],
      ),),
    );
  }
}