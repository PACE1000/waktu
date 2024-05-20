import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:waktu/Screen/DigitalClock.dart';

class TestingScreen extends StatefulWidget{
  TestingScreen({Key? key,}):super(key: key);

  @override
  _TestingScreen createState() => _TestingScreen();

}

class _TestingScreen extends State<TestingScreen>{
    int _activecurrentStep = 0;
  

  @override
Widget build(BuildContext context) {
   List<Step> stepList() => [
         Step(title: Text('Account'), content: Center(child: Text('Account'),),
         state:_activecurrentStep<=0? StepState.editing : StepState.complete,
         isActive: _activecurrentStep >=0 ),
         
          Step(title: Text('Address'), content: Center(child: Text('Address'),),state:
                _activecurrentStep <= 1 ? StepState.editing : StepState.complete,
                isActive: _activecurrentStep>=1,),
          Step(title: Text('Confirm'), content: Center(child: Text('Confirm'),),
          state: _activecurrentStep <=2 ? StepState.editing:StepState.complete,
          isActive: _activecurrentStep>=2)
   ];

  return Scaffold(
    
    body: Stepper(
      //type: StepperType.horizontal,
      steps: stepList(),
      currentStep: _activecurrentStep,
      onStepContinue: () {
        if(_activecurrentStep <(stepList().length-1)){
          setState(() {
            _activecurrentStep+=1;
          });
        }
      },
      onStepCancel: () {
        if(_activecurrentStep ==0){
          return;
        }
        setState(() {
          _activecurrentStep-=1;
        });
      },
      onStepTapped: (value) {
        setState(() {
          _activecurrentStep = value;
        });
      },
      )
  );
}


}