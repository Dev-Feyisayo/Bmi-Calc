
import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {

  final IconData? icon;
  final Function() onPressed;

RoundIconButton({this.icon,  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}