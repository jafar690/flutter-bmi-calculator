import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';
import '../components/custom_card_widget.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.bmi}) : super(key: key);

  final BmiCalculator bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              child: const Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Expanded(
              child: CustomCardWidget(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmi.getResult(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi.calculateBMI().toStringAsFixed(1),
                      style: kBMITextStyle,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Normal BMI Range:',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '18,5 - 25kg/m2',
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        bmi.getInterpretation(),
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'CALCULATE YOUR BMI',
            )
          ],
        ),
      ),
    );
  }
}
