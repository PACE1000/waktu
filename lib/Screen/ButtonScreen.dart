import 'package:flutter/material.dart';
import 'package:waktu/Utils/Button.dart';

class ButtonScreen extends StatelessWidget{
  ButtonScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          btn_bayar(context, () {
            print("Lunas");
          }),

          
          btn_cicil(() {
            print("Cicil");
          })
        ],
      ),
    );
  }
}