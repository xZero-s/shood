import 'dart:developer';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  // variable for button action

  const DefaultButton({Key? key, required this.text
      // add button action
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: ElevatedButton(
        onPressed: () => log('Login button pressed!'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)))),
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
      ),
    );
  }
}
