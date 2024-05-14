import 'package:flutter/material.dart';

class TestingScreen extends StatefulWidget{
  TestingScreen({Key? key,}):super(key: key);

  @override
  _TestingScreen createState() => _TestingScreen();

}

class _TestingScreen extends State<TestingScreen>{
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: 
        <Widget>[
          Text("Ini Text Atas"),
          SizedBox(height: 10000,),
          Text("Ini Text Dibawah")
        ],),
      )
    );
  }
}