import 'package:flutter/material.dart';

class Statelessw extends StatelessWidget{
  Statelessw({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: (){
              print("Button Pressed");
            },
            child: const Text("Ini Adalah Stateless Widget")
          )
        ],
      )
    );
  }
}