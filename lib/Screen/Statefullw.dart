import 'package:flutter/material.dart';

class Statefullw extends StatefulWidget{
  Statefullw({Key? key}):super(key: key);

  @override
  _Statefullw createState() => _Statefullw();
}

class _Statefullw extends State<Statefullw>{

  String nama = "Mr Brama";

  @override
  void initState(){
    super.initState();
    //Dia Ngambil data dari Database
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(nama),

          TextButton(onPressed: (){
            //penggunaan Set State
            setState(() {
              nama = "Brama";
            });
          }, child: Text("Ubah Nama"))
        ],
      ),
    );
  }

  @override
  void dispose(){
    super.dispose();
  }
  
}