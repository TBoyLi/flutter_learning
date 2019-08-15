import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  StepperPage({Key key}) : super(key: key);

  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.black),
            child: Stepper(
              currentStep: _currentStep,
              onStepTapped: (index) {
                setState(() {
                  _currentStep = index;
                });
              },
              onStepContinue: () {
                setState(() {
                  _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                });
              },
              onStepCancel: () {
                setState(() {
                  _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                });
              },
              steps: <Step>[
                Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('Magna exercitation duis non sint eu nostrud.'),
                    isActive: _currentStep == 0),
                Step(
                  title: Text('Choose Plan'),
                  subtitle: Text('Choose you plan.'),
                  content: Text('Magna exercitation duis non sint eu nostrud.'),
                  isActive: _currentStep == 1,
                ),
                Step(
                  title: Text('Confirm payment'),
                  subtitle: Text('Confirm your payment method.'),
                  content: Text('Magna exercitation duis non sint eu nostrud.'),
                  isActive: _currentStep == 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
