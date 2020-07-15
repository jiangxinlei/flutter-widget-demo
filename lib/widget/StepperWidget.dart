import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _curStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      body: Center(
        child: Stepper(
          currentStep: _curStep,
          onStepContinue: () {
            if (_curStep >= 4) return;
            setState(() {
              _curStep += 1;
            }); 
          },
          onStepCancel: () {
            if (_curStep <= 0) return;
            setState(() {
              _curStep -= 1;
            });
          },

          steps: <Step>[
            Step(
              title: Text('Step 1'), 
              content: SizedBox(
                height: 100,
                width: 100,
              )
            ),
            Step(
              title: Text('Step 2'), 
              content: SizedBox(
                height: 100,
                width: 100,
              )
            ),
            Step(
              title: Text('Step 3'), 
              content: SizedBox(
                height: 100,
                width: 100,
              )
            ),
            Step(
              title: Text('Step 4'), 
              content: SizedBox(
                height: 100,
                width: 100,
              )
            ),
            Step(
              title: Text('Step 5'), 
              content: SizedBox(
                height: 100,
                width: 100,
              )
            )
          ],
        ),
      ),
    );
  }
}