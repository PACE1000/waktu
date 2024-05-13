

import 'package:flutter/material.dart';

DefaultTabController defaultTabController(
  BuildContext context,
  int jumlah,
  String nama,
  _bottom,
  _body,
  [Color? background]
){
  return DefaultTabController(length: jumlah, 
  child: Scaffold(
    appBar: AppBar(
      title: Text(nama),
      centerTitle: true,
      backgroundColor: background ?? const Color(0xFFE61219),
      leading: IconButton(onPressed: (){}, 
      icon: const Icon(Icons.arrow_back),),
      bottom: _bottom,
    ),
    body: _body,
  ));
}