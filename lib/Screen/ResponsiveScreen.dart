import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget{
  ResponsiveScreen({Key? key}):super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Responsive ni bos"),backgroundColor: Colors.red),
      body: Column(
        children: <Widget>[
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(color: Colors.purple),
            child: Text("Tidak Responsive"),
          ),

          SizedBox(
            height: 50,
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.5,
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Ini Responsive"),
          )
        ],
      ),
    );
  }
}