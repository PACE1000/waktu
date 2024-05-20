import 'package:flutter/material.dart';

class StepScreen extends StatefulWidget{
  StepScreen({Key? key}):super(key: key);

  @override
  _StepScreen createState() => _StepScreen();
}

class _StepScreen extends State<StepScreen>{

  int _aktifstep =0;

  List<Step> stepList() => [
    Step(title: Text("Biodata"), content: Container(
      child: Column(
        children: <Widget>[
          TextField()
        ],
      ),
    ),
    state: _aktifstep <=0 ? StepState.editing : StepState.complete,
    isActive: _aktifstep >=0
    ),
    
     Step(title: Text("Tanda Pengenal"), content: Container(
      child: Column(
        children: <Widget>[
          TextField()
        ],
      ),
    ),
    state: _aktifstep <=1 ? StepState.editing : StepState.complete,
    isActive: _aktifstep >=1
    ),

     Step(title: Text("Konfirmasi"), content: Container(
      child: Column(
        children: <Widget>[
          TextField()
        ],
      ),
    ),
    state: _aktifstep <=2 ? StepState.editing : StepState.complete,
    isActive: _aktifstep >=2
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stepper(
        //type: StepperType.horizontal,
        steps: stepList(),
        currentStep: _aktifstep,
        onStepContinue: () {
          if(_aktifstep < stepList().length -1){
            setState(() {
              _aktifstep +=1;
            });
          }
        },
        onStepCancel: () {
          if(_aktifstep ==0){
            return;
          }
          setState(() {
            _aktifstep -=1;
          });

        },
        onStepTapped: (value) {
          setState(() {
            _aktifstep = value;
          });
        },
        ),
    );
  }
}