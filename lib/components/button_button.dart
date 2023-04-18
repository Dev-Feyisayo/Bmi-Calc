import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';


class ButtomButton extends StatelessWidget {

  ButtomButton({super.key, required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(0xFFEB1555),
        margin:  const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
          style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}