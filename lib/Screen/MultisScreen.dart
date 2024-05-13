import 'package:flutter/material.dart';
import 'package:waktu/Utils/defaultTabController.dart';

class MultisScreen extends StatelessWidget{
  MultisScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return defaultTabController(context, 3, "MultiScreen lebih Ringkas", 
    const TabBar(tabs: 
    <Widget>[
      Tab(text: "Screen 1 ini",),
      Tab(text: "Screen 2 ini",),
      Tab(text: "Screen 3 ini",),
    ],
    labelColor: Colors.white,
    indicatorColor: Colors.white,), TabBarView(children: <Widget>[
        _tab("1"),
        _tab("2"),
        _tab("3")
    ] ),
    Colors.green);
  }

  Widget _tab(String KolomScreen){
    return Center(
      child: Text("Ini Screen,$KolomScreen"),
    );
  }
}