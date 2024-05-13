import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget{
  ListViewBuilderScreen({Key?key }):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        //Ngga wajib diisi, kalau ngga diisi maka akan menampilkan tak hingga
        itemBuilder: (context, index) { //Sifat Wajib diisi 
          return Column(
              children: <Widget>[
                Card(
            child: Padding(padding: const EdgeInsets.all(20),
            child: Text(index.toString()),),
          ),
          Text("Ini Tambahan Konten")
              ],
          );
        },)
    );
  }
}