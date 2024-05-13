import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget{
  ListViewSeparatedScreen({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.separated(
        
        itemBuilder: (context, index) {
          return Card(child: Padding(padding: const EdgeInsets.all(15),
          child: Text("List Item $index"),),);
        }, 
        separatorBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: Padding(padding: const EdgeInsets.all(5),
            child: Text("Ini Separator $index"),),
          );
        }, 
        itemCount: 20),
    );
  }
}