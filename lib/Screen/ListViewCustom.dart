import 'package:flutter/material.dart';

class ListViewCustomScreen extends StatelessWidget{
  ListViewCustomScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(

        //SliverChildList Delegate => Menerima LIst Children / Widget => ListViewScreen biasa
        //SliverChildBuilderDelegate => Menerima LIst yang bertemakan Index => ListView.Builder();
        
      ),
    );
  }
}