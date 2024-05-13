import 'package:flutter/material.dart';
import 'package:waktu/SystemController.dart';

class DateScreen extends StatefulWidget{
  DateScreen({Key? key,
  required this.name}):super(key: key);

  @override
  _DateScreen createState()=> _DateScreen();
  String name;
}

class _DateScreen extends State<DateScreen>{

  TextEditingController tanggal = TextEditingController();
  TextEditingController waktu = TextEditingController();

  SystemController _systemController = SystemController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(widget.name),
          Form_Tanggal_Jam(context, tanggal, "Pilih Tanggal", () {_systemController.pilih_tanggal(context, tanggal);}, Icon(Icons.date_range)),
        
          SizedBox(height: 200,),

          Form_Tanggal_Jam(context, waktu, "Pilih Jam", () {_systemController.pilih_waktu(context, waktu);}, Icon(Icons.date_range))
        ],
      ),
    );
  } 

  Widget Form_Tanggal_Jam(
    BuildContext context,
    TextEditingController controller,
    String label,
    VoidCallback callback,
    Icon ikon,
    [Color? teks]
  ){
    return Container(
      child: Column(
        children: <Widget>[
          Text(label),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: ikon,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffc8c8c8)),
                borderRadius: BorderRadius.circular(15)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xffc8c8c8),
                ),
              )
            ),onTap: callback,
            controller: controller,
          )
        ],
      ),
    );
  }
}