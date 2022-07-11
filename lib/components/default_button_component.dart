import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  // variable for button action

  const DefaultButton({
    Key? key,
    required this.text
    // add button action
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(color: Colors.black),
      ),
    );
  }
}
