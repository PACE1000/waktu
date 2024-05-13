import 'package:flutter/material.dart';

class TestingScreen extends StatefulWidget{
  TestingScreen({Key? key,required this.role}):super(key: key);

  @override
  _TestingScreen createState() => _TestingScreen();


  String role;
}

class _TestingScreen extends State<TestingScreen>{
  String pesan_selamat_datang_pengunjung="Selamat datang Pengunjung";
  String pesan_selamat_datang_admin = "Pemilik Rumah Datang";
  String pesan ="";
  @override
  void initState(){
    super.initState();
    if(widget.role == "Pengunjung"){
      setState(() {
        pesan = pesan_selamat_datang_pengunjung;
      });
    }else{
      setState(() {
        pesan = pesan_selamat_datang_admin;
      });
    }

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(pesan)
        ],
      ),
    );
  }
}