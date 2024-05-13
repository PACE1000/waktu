import 'package:flutter/material.dart';

Widget _button( 
  double panjang,
  double lebar,
  Color tombol,
  VoidCallback aksi,
  String nama,
  [Color? tepi, double? lekukan]
){
  return Container(
    width: panjang,
    height: lebar,
    decoration: BoxDecoration(
      border: Border.all(color: tepi ?? Colors.blue),
      borderRadius: BorderRadius.circular(lekukan ?? 30),
      color: tombol
    ),
    child: TextButton(onPressed: aksi, 
    child: Text(nama)),
  );
}

//ngga pakai parameter yang ngga wajib diisi
Widget btn_bayar(BuildContext context,VoidCallback aksi){
  return _button(300,100 , Colors.green, aksi, "Bayar");
}


//pakai parameter yang ngga wajib diisi
Widget btn_cicil(VoidCallback aksi){
  return _button(500, 100, Colors.red, aksi, "Cicil",Colors.green,10);
}