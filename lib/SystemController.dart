import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SystemController{
  Future<void> pilih_tanggal(BuildContext context, TextEditingController controller) async {
    final DateTime? _hari = await showDatePicker(
      context: context, 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100),
      initialDate: DateTime.now());

      if(_hari != null){
        controller.text = _hari.toString().split(" ")[0];
      }
  }

  Future<void> pilih_waktu (BuildContext context, TextEditingController controller) async{
    final TimeOfDay? _waktu = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial
      );
      if(_waktu !=null){
        controller.text = '${_waktu.hour}:${_waktu.minute}';
      }
  }

  Future<void> bukaurl(String url) async{
    final Uri _url = Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception("Tidak Bisa Membuka Link");
    }
  }

  void check_kosong(
    BuildContext context,
    String nama
  ){
    if(nama !=""){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sudah Terisi"),backgroundColor: Colors.green,behavior: SnackBarBehavior.floating,));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Masih Kosong"),backgroundColor: Colors.red,behavior: SnackBarBehavior.fixed,));
    }
  }
}