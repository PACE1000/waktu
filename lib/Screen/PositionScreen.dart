import 'package:flutter/material.dart';

class PositionScreen extends StatelessWidget{
  PositionScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //Dibawah
          Positioned(
            bottom: 0,
            child: Center(child: Text("Ini Tulisan Dibawah"),)
          ),

          //Diatas
          Positioned(
            right: 100,
            top: 0,
            child:Text("Ini Tulisan Diatas") ,)
        ],
      )
    );
  }
}