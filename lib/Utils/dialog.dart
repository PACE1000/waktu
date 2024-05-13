import 'package:flutter/material.dart';

void buatDialog(BuildContext context, String Nama,List<Widget> _children){
  showDialog(
    context: context,
    builder: (context) {
      return Builder(builder: (BuildContext scaffoldContext){
        return AlertDialog(
          title: Center(child: Text(Nama),),
          alignment: Alignment.center,
          content: Container(
            width: 300,
            height: 300,
            child: Column(
              children: _children,
            ),
          ),
        );
      });
    },
  );
}