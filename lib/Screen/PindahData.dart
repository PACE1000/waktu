import 'package:flutter/material.dart';

class PindahData extends StatelessWidget{
  PindahData({
    Key? key,
    required this.nama,
    required this.nomor,
    this.tinggi
  }):super(key: key);

  String nama;
  String nomor;
  String? tinggi;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
            Text(nama),
            Text("Ini Nomornya $nama")
        ],
      ),
    );
  }
}