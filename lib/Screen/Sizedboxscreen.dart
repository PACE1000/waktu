import 'package:flutter/material.dart';

class SizedBoxScreen extends StatelessWidget{
  SizedBoxScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text("Ini adalah Teks 1"),
          ),
          SizedBox(width: 100,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child: Text("Ini adalah Teks 2"),
          ),
        ],
      )
    );
  }
}