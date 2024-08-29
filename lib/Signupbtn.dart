import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/submitbtn.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var Email=TextEditingController();
    var username=TextEditingController();
    var Gender=TextEditingController();
    var Adress=TextEditingController();
    var phonenum=TextEditingController();
    var Age=TextEditingController();
    var choice=TextEditingController();// seller or customer
    return Scaffold(
      appBar: AppBar(
        title: Text('Wedding Dresses Store',style: TextStyle(fontStyle: FontStyle.italic,
            color: Colors.red,
            fontSize: 22),),
        centerTitle: true,
      ),
      body:Container(
        color: Colors.black,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 15,),
              Text('Fill up the information for sign up',style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold,
                  color: Colors.white,fontStyle: FontStyle.italic)),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Username:',style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w700,color: Colors.white)),
                    SizedBox(width: 14,),
                    Expanded(
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller:username,
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Email Acc:',style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w700,color: Colors.white)),
                    SizedBox(width:15,),
                    Expanded(
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller: Email,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Enter your email account..',
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
                            suffixIcon: Icon(Icons.email_rounded,color: Colors.white,size: 30,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('Address:',style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                   // SizedBox(width: 25,),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller: Adress,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Enter your address..',
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

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('Gender:',style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller: Gender,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Male/Female',
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('Age:',style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        controller: Age,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Enter your Age..',
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
                            suffixIcon: Icon(Icons.format_list_numbered_sharp,color: Colors.white,size: 30,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('Phone no:',style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        controller: phonenum,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Enter your number..',
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
                            suffixIcon: Icon(Icons.phone,color: Colors.white,size: 30,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('Work as',style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w700,color: Colors.white)),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        style:TextStyle(color: Colors.white),
                        controller:choice,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: 'Seller/Customer',
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
                            suffixIcon: Icon(Icons.email_rounded,color: Colors.white,size: 30,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => submit(),));
                },
                child: Container(
                  color: Colors.red,
                  height: 40,
                  width: 100,
                  child:Center(child: Text('Submit',style: TextStyle(color: Colors.black),))
                ),
              )
            ],
          ),
        ),
      ) ,
    );
  }

}