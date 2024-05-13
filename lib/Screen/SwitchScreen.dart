import 'package:flutter/material.dart';
import 'package:waktu/Screen/MultisScreen.dart';
import 'package:waktu/Screen/SosialMediaScreen.dart';

class SwitchScreen extends StatelessWidget{
  SwitchScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextButton(onPressed: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => SosialMediaScreen(),));
          }, 
          child: Text("Pindah ke SosialMediaScreen"))
        ],
      ),
    );
  }
}