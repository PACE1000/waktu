import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget{
  ScrollScreen({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Text Ini harusnya ada di atas"),
            SizedBox(height: 3000,),
            Text("Ini Textnya ada dibawah sendiri"),
            SizedBox(height: 200,)
          ],
        ),
      ),
    );
  }
}