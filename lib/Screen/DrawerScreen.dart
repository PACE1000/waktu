import 'package:flutter/material.dart';
import 'package:waktu/Screen/MultiScreen.dart';
import 'package:waktu/Screen/TestDialog.dart';

class DrawerScreen extends StatelessWidget{
  DrawerScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Pakai Drawer"),),
      drawer: _drawer(context),
      body: const Column(
        children: <Widget>[
          Text("Keliatannya pakai Drawer ini")
        ],
      ),
    );
  }

  Widget _drawer(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          _ListTile("MultiScreen", () {Navigator.push(context, MaterialPageRoute(builder: (context) => MultiScreen(),));}),
          _ListTile("Dialog", () {Navigator.push(context,MaterialPageRoute(builder: (context)=>TestDialog()));})
        ],
      ),
    );
  }

  Widget _ListTile(String Judul, VoidCallback aksi){
    return ListTile(
      title: Text(Judul),
      onTap: aksi,
    );
  }
}