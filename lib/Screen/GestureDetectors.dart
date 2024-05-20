import 'package:flutter/material.dart';
import 'package:waktu/Screen/DigitalClock.dart';

class GestureDetectors extends StatelessWidget{
  GestureDetectors({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          GestureDetector(
            onDoubleTap: () {
              print("Ini Telah Ditekan");
              Navigator.push(context, MaterialPageRoute(builder: (context) => DigitalClock(),));
            },
            child: Image.asset("images/Kamera.jpg") ,
          ),
          
        ],
      ),
    );
  }
}