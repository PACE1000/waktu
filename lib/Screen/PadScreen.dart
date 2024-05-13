import 'package:flutter/material.dart';

class PadScreen extends StatelessWidget{
 PadScreen({Key? key}):super(key:key); 

 @override
 Widget build(BuildContext context){
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          width: 300,
          height: 300,
          decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Colors.black)),
          child: Column(
            children: <Widget>[
              Text("Ini Jarak 10"),

              Padding(padding: EdgeInsets.all(50),
              child: Text("Ini Spasi 50 + 10"),)
            ],
          ),
        )
      ],
    ),
  );
 }
}