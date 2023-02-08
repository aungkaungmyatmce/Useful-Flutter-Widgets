import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stepper(
      steps: [
        Step(
            isActive: _currentStep == 0,
            title: Text('Step 1'),
            content: Text(
              'Information for step 1',
              style: TextStyle(color: Colors.green),
            )),
        Step(
            isActive: _currentStep == 1,
            title: Text('Step 2'),
            content: Text(
              'Information for step 2',
              style: TextStyle(color: Colors.green),
            )),
        Step(
            isActive: _currentStep == 2,
            title: Text('Step 3'),
            content: Text(
              'Information for step 3',
              style: TextStyle(color: Colors.green),
            )),
      ],
      onStepTapped: (int index) {
        setState(() {
          _currentStep = index;
        });
      },
      onStepContinue: () {
        if (_currentStep != 2) {
          setState(() {
            _currentStep += 1;
          });
        }
      },
      onStepCancel: () {
        if (_currentStep != 0) {
          setState(() {
            _currentStep -= 1;
          });
        }
      },
      currentStep: _currentStep,
      type: StepperType.horizontal,
    ));
  }
}
