import 'package:flutter/material.dart';
import 'package:practice_app/Designsbtn.dart';
import 'package:practice_app/Loginbtn.dart';
import 'package:practice_app/Signupbtn.dart';
import 'package:practice_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: Colors.black, centerTitle: true)
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 11,),
            child: Container(

                height: 30,
                child: Text('Wedding Dresses Store', style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.red),)),
          ),

        ),
        body: Stack(
          children: [
            Container(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(

                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(200),
                      bottomRight: Radius.circular(200),),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 70,),
                        child: Container(
                          height: 40,
                          width: 110,
                          color: Colors.black,
                          child: OutlinedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => MyHomePage(),));
                          },
                              child: Text('Home', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 17),
                        child: Container(
                          height: 40,
                          width: 110,
                          color: Colors.black,
                          child: OutlinedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Login(),));
                          },
                              child: Text('Login', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 17),
                        child: Container(
                          height: 40,
                          width: 110,
                          color: Colors.black,
                          child: OutlinedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Signup(),));
                          },
                              child: Text('Sign up', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 17),
                        child: Container(
                          height: 50,
                          width: 110,
                          color: Colors.black,
                          child: OutlinedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Designs(),));
                          },
                              child: Text('Designs', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic),)),
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  height: 480,
                  width: 200,
                  child: Image.asset('assets/images/recently.jpg',),
                )
              ],
            ),

          ],

        )
    );
  }
}
