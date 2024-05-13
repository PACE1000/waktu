import 'package:flutter/material.dart';

class PindahDatas extends StatefulWidget{
  PindahDatas({Key? key, required this.nama, this.tinggi}):super(key: key);

  @override
  _PindahDatas createState() => _PindahDatas();

  String nama;
  String? tinggi;
}

class _PindahDatas extends State<PindahDatas>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(widget.nama),
          Text("Ini adalah Tinggi badan saya ${widget.tinggi}")
        ],
      ),
    );
  }
}