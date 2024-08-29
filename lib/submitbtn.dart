import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class submit extends StatefulWidget{
  @override
  State<submit> createState() => _submitState();
}

class _submitState extends State<submit>  with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;
  late  Animation colorAnimation;
  late Animation anim;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    animation=Tween(begin: 100.0,end: 650.0).animate(animationController);
    colorAnimation=ColorTween(begin: Colors.red,end: Colors.black).animate(animationController);
    anim=Tween(begin: 100.0,end: 200.0).animate(animationController);
    animationController.addListener(() {
      setState(() {

      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wedding Dresses Store',style: TextStyle(fontStyle: FontStyle.italic,
            color: Colors.red,
            fontSize: 22),),
        centerTitle: true,
      ),
      body: Container(
        color: colorAnimation.value,
        height: animation.value,
        width: animation.value,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height:anim.value,
              width:360,
             // width: animation.value,
              decoration: BoxDecoration(
                  color: Colors.white,
                border: Border.all(color: Colors.red,width:2)
              ),

              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Icon(Icons.minimize,color: Colors.red,size: 30,),
                    SizedBox(width: 11),
                      Icon(Icons.restore_page,color: Colors.red,size: 30,),
                        SizedBox(width: 11,),
                        Icon(Icons.close,color: Colors.red,size: 30,),
                    ],),
                  ),
                  SizedBox(height: 11,),
                  Text(
                    ' Welcome to our store!! Your account \n is created.'
                        ' Now you place your order \n or also work as a seller.',style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontStyle:FontStyle.italic,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}