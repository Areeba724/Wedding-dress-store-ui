import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var username=TextEditingController();
    var Password=TextEditingController();
    var email=TextEditingController();
    return Scaffold(
appBar: AppBar(
  title: Text('Wedding Dresses Store',style: TextStyle(fontStyle: FontStyle.italic,
      color: Colors.red,
  fontSize: 22),),
  centerTitle: true,
),
      body: Container(
        height: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 50,
                  child: Text('Fill up the information for Login',style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: Colors.white,fontStyle: FontStyle.italic),),
                ),
              ),

              Row(
               // mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Username:',style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w700,color: Colors.white),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller: username,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: 'Enter your name..',
                          hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.red,

                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )
                          ),
                            suffixIcon: Icon(Icons.abc_rounded,color: Colors.white,size: 30,)
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Password:',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: Colors.white),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller: Password,
                        obscureText: true,
                        obscuringCharacter: '*',
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: 'Enter your password..',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.red,

                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )
                          ),
                          suffixIcon: Icon(Icons.password,color: Colors.white,)

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Email:',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: Colors.white),),
                  ),
                  SizedBox(width: 50,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller: email,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Enter your email..',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(
                                  color: Colors.red,

                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )
                            ),
                            suffixIcon: Icon(Icons.email_rounded,color: Colors.white,)

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 40,
               width: 100,
               color: Colors.red,
               child: Center(child: Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
             ),
           ),
              Padding(
             padding: const EdgeInsets.all(11),
             child: Container(
               color: Colors.red,
               child: InkWell(
                 onTap: (){
                   print('Tapped');
                 },
                 child: TextField(
                   keyboardType:TextInputType.none,
                  showCursor:false,//Color: Colors.white,
                  decoration: InputDecoration(
                   border: InputBorder.none,
                    prefixIcon: Icon(Icons.facebook,color: Colors.white,),
                    hintText: 'Sign in with Facebook',
                    hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                  ),
          ),
               ),
             ),
           ),
              Padding(
                padding: const EdgeInsets.all(11),
                child: Container(
                  height: 45,
                  color: Colors.white,
                  child: InkWell(
                    onTap: (){

                      print('Tapped');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Image.asset('assets/images/google.png',scale: 35,),
                        SizedBox(width: 15),
                        Text('Sign in with Google',style: TextStyle(fontSize: 18),)
                      ],


                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                print('forgot button tapped');
              },
                  child: Text('Forgot Password or not ? ',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),))

            ],
          ),
        ),
      ),
    );
  }

}