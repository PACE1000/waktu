import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget{
  ExpandedScreen({Key? key}):super(key: key);

  final List<String> items = List.generate(50, (index) => "Ini Index Bernomor $index");

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: 
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          if(index==2){
            return Padding(padding: EdgeInsets.all(8),
            child: Card(
              child: ListTile(
                title: Text(items[index]),
                trailing: Expanded(child: Text("Bisa Meletakkan Konten Tambahan Disini",textAlign: TextAlign.right,)),
              ),
            ),);
          }else{
            return Padding(padding: EdgeInsets.all(8),
            child: Card(child: ListTile(
              title: Text(items[index]),
            ),),);
          }
        },)
    );
  }
}