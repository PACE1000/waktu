import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget{
  DigitalClock({Key? key}):super(key: key);

  @override
  _DigitalClock createState() => _DigitalClock();
}

class _DigitalClock extends State<DigitalClock>{

  late DateTime _saatini;
  late Timer _timer;
  
  @override
  void initState(){
    super.initState();
    _saatini = DateTime.now(); //waktu awal, isinya itu adalah hari, tanggal dan jam
    _timer = Timer.periodic(Duration(seconds: 1), (timer) { //tiap detik akan diupdate waktunya
      setState(() {
        _saatini = DateTime.now(); //punya waktu baru
      });
    });
  }

  @override
  Widget build(BuildContext context){
    String formatWaktu = DateFormat.Hms().format(_saatini);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(formatWaktu,
          style:TextStyle(
            fontSize: 100,
            fontFamily: "Digital_7",
          ) ,),
          Text(_saatini.toString())
        ],
      ),
    );
  }

  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }
}