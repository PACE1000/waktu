import 'package:flutter/material.dart';

class MultiScreen extends StatelessWidget{
  MultiScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: AppBar(title: Text("MultiScreen"),
      centerTitle: true,
      backgroundColor: const Color(0xFF61219),
      automaticallyImplyLeading: true,
      leading: IconButton(onPressed: (){}, 
      icon: const Icon(Icons.arrow_back)),
      bottom: const TabBar(
        tabs: <Widget>[
          Tab(text: "Screen 1",),
          Tab(text: "Screen 2",),
          Tab(text: "Screen 3")
        ],
        labelColor: Colors.white,
        indicatorColor: Colors.white,
      ),),
      body: TabBarView(children: <Widget>[
        Text("Ini Screen 1"),
        Text("Ini Screen 2"),
        Text("Ini Screen 3")
      ]),
    ));
  }
}