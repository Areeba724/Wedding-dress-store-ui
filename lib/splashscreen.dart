import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(
       color: Colors.black,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             height: 300,
             width: 450,
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/images/dress.jpg'),
             ),
           ),
           RichText(
             text: TextSpan(
               style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
               children:[
                 TextSpan(text: 'Welcome ',style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red)),
                 TextSpan(text: 'to our',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red)),
                 TextSpan(text: ' Store ',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red)),

               ]
             ),
           ),
         ],
       ),
     )
   );
  }
}