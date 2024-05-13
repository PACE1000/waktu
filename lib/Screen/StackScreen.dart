import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget{
  StackScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.2,
          ),
          Image.asset("Images/Vector.png",alignment: Alignment.topCenter),
          Positioned(
            left: 40,
            top: 130,
            height: 120,
            width: 300,
            child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _row("Bill.png", "Bill"),
                _row("Calendar.png", "Tanggal"),
                _row("Flat_Tire.png", "Servis")
              ],
            ),
          )),

          Positioned(
            bottom: 0,
            child:Text("Posisinya") )
        ],
        
      ),
    );
  }

  Widget _row(String Gambar, String Nama){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 46,
          height: 46,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFc8c8c8)
          ),
          child: Image.asset("Images/$Gambar",height: 30,width: 30,),
        ),
        Text(Nama)
      ],
    );
  }
}