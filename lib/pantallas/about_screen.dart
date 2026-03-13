


import 'package:flutter/material.dart';
import 'package:proyecto/pantallas/code_screen.dart';

class AboutScreen extends StatelessWidget{
  const AboutScreen({super.key});

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
            Text('Welcome to Paycad',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 27),),
            SizedBox(
              height: 10,
            ),
            Text('I provide essential stuff for your',style: TextStyle(color: Colors.grey,fontSize: 23),),
            Text('ui designs every tuesday!',style: TextStyle(color: Colors.grey,fontSize: 23),),
            SizedBox(
              height: 10,
            ),
            Padding(padding: EdgeInsetsGeometry.only(left: 60),
              child: 
                Column(spacing: 5,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/img_arraw_top 4.png'),
                        width: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Send and receive money',style: TextStyle(fontSize: 17),)
                      ],
                    ),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/img_arraw_top 4.png'),
                      width: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Send and receive money',style: TextStyle(fontSize: 17),)
                    ],
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/img_arraw_top 4.png'),
                      width: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Explore exciting offers',style: TextStyle(fontSize: 17),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CodeScreen(),));
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