import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget{
  InitScreen({Key? key, required this.role}):super(key: key);

  @override
  _InitScreen createState() => _InitScreen();
  String role;
}

class _InitScreen extends State<InitScreen>{
  String pesan = ""; 

  String pesan_pengunjung = "Halo Pengunjung, Selamat Datang";
  String pesan_admin = "Selamat Datang Admin, Selamat Audit";

  @override
  void initState(){
    super.initState();
    if(widget.role == "Pengunjung"){
      setState(() {
        pesan = pesan_pengunjung;
      });
    }else{
      setState(() {
        pesan = pesan_admin;
      });
    }
  }

  //ini tampilan atau UInya
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

  @override
  void dispose(){
    super.dispose();
  }
  
}