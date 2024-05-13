import 'package:flutter/material.dart';
import 'package:waktu/Utils/dialog.dart';

class TestDialog extends StatelessWidget{
  TestDialog({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          _button((){
            buatDialog(context, "Ini Pop UP", [
              Text("Ini bisa lho"),
              Text("Ini Buktinya")
            ]);
          }),
        ],
      ),
    );
  }

  Widget _button(VoidCallback aksi){
    return GestureDetector(
      child: Text("Klik Disini"),
      onTap: aksi ,
    );
  }
}