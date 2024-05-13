import 'package:flutter/material.dart';

class MarginScreen extends StatelessWidget{
  MarginScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(100),
            decoration: BoxDecoration(border: Border.all(color: Colors.black),),
            child: Text("Ini Margin 1"),
          ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            margin: EdgeInsets.all(100),
            decoration: BoxDecoration(border: Border.all(color: Colors.red),),
            child: Text("Ini Margin 1"),
          ),
        ],
      ),
    );
  }
}