import 'package:flutter/material.dart';
import 'package:waktu/SystemController.dart';

class NotifikasiScreen extends StatelessWidget{
  NotifikasiScreen({Key? key}):super(key: key);

  TextEditingController Nama = TextEditingController();
  SystemController _systemController = SystemController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(controller: Nama,),
          ElevatedButton(onPressed: (){
            _systemController.check_kosong(context, Nama.text);
          }, child: Text("Check Kosong apa tidak"))
        ],
      ),
    );
  }
}