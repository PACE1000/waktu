import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget{
  RadioScreen({Key? key}):super(key: key);

  @override
  _RadioScreen createState() => _RadioScreen();
}
class _RadioScreen extends State<RadioScreen>{

  String nilai_radio = "0";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("1 + 1 = ?"),
          _opsiRadioVertical("2", "2", nilai_radio),
          _opsiRadioVertical("3", "3", nilai_radio),
          _opsiRadioVertical("4", "4", nilai_radio),

          SizedBox(height: 200,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _opsiRadioHorizontal("2", "2", nilai_radio),
            _opsiRadioHorizontal("3", "3", nilai_radio),
          _opsiRadioHorizontal("4", "4", nilai_radio),
            ],
          )
        ],
      ),
    );
  }

  Widget _opsiRadioVertical(String nama, String value, String groupValue){
    return ListTile(
      title: Text(nama),
      leading: Radio(value: value, groupValue: groupValue, onChanged: (value) => setState(() {
        groupValue = value.toString();
      }),),
    );
  }
  
  Widget _opsiRadioHorizontal(String nama, String value, String groupValue){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Radio(value: value, groupValue: groupValue, onChanged: (value)=> setState(() {
          groupValue = value.toString();
        })),
        Text(nama)
      ],
    );
  }
}