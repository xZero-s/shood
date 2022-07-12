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
    return SizedBox(
      width: 200.0,
      height: 40.0,
      child: ElevatedButton(
        onPressed: () => print('Login Button Press!'),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.grey
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
