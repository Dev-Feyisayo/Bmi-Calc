import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/components/resuable_card.dart';
import "package:flutter/material.dart";
import 'package:bmicalculator/components/button_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({
   required this.bmiResult,
   required this.resultText, 
   required this.interpretation
   });


  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded( 
          child: Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Your Result',
            style: kTitleTextStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                    ),
                    Center(
                      child: Text(
                        interpretation,
                      style: kBodyTextStyle,),
                    ),
                ],
              ),
            ),
            ),
            ButtomButton(
              onTap: () {
                Navigator.pop(context);
              }, 
              buttonTitle: 'RE-CALCULATE',

            ),
        ],
        ),
    );
  }
}