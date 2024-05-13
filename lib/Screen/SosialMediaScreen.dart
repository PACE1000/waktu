import 'package:flutter/material.dart';
import 'package:waktu/Screen/PositionScreen.dart';
import 'package:waktu/SystemController.dart';

class SosialMediaScreen extends StatefulWidget{
  const SosialMediaScreen({Key? key}):super(key: key);

  @override
  State<SosialMediaScreen> createState() => _SosialMediaScreenState();
}

class _SosialMediaScreenState extends State<SosialMediaScreen> {
  SystemController _systemController = SystemController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextButton(onPressed: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PositionScreen()));
          }, child: Text("Pindah ke Positioned Screen")),
          //Instagram
          _sosmed("www.instagram.com", Icon(Icons.access_time_filled_rounded)),
          _sosmed("www.facebook.com", Icon(Icons.add_business_sharp)),
          _sosmed("www.youtube.com", Icon(Icons.place))
        ],
      ),
    );
  }

  Widget _sosmed(String link, Icon ikon){
    return Center(
      child: GestureDetector(
        onTap: () {
          _systemController.bukaurl(link);
        },
        child: ikon,
      ),
    );
  }
}