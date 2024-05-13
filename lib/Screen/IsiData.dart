import 'package:flutter/material.dart';
import 'package:waktu/Screen/InitScreen.dart';
import 'package:waktu/Screen/PindahData.dart';
import 'package:waktu/Screen/Pindahdatas.dart';
import 'package:waktu/Screen/TestingScreen.dart';

class IsiData extends StatelessWidget{
  IsiData({Key? key}):super(key: key);

  TextEditingController nama = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(controller: nama),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => InitScreen(role: nama.text)));
          }, child: Text("Pindah ke Testing Screen")),

          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PindahDatas(nama: nama.text,tinggi: nama.text,),));
          }, child: Text("Pindah ke PindahDatas Screen")),
        ],
      ),
    );
  }
}