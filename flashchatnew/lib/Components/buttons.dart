
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({required this.text, required this.pressed, required this.coulor});

  final String text;
  final void Function() pressed;
  final Color coulor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: coulor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: pressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
