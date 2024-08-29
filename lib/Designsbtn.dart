import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Designs extends StatelessWidget{
  var arrname=['assets/images/b1.jpg','assets/images/b2.jpg','assets/images/b3.png',
    'assets/images/b4.jpeg','assets/images/b5.jpeg','assets/images/b6.jpg',
    'assets/images/b7.jpeg','assets/images/b8.jpg', 'assets/images/b12.jpg',
    'assets/images/b13.jpg','assets/images/b14.jpg','assets/images/b15.jpeg','assets/images/b16.jpg','assets/images/b17.jpg',
    'assets/images/b19.jpeg','assets/images/b20.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bridal Dresses',style:TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.red),),
        backgroundColor: Colors.black,
         centerTitle: true,
      ),
      body: GridView.builder( itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
            child: Image.asset(arrname[index]),
          ),
        );
      },
        itemCount: arrname.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11
        ),
      ),
    );
  }

}