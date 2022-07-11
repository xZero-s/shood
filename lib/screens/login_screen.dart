import 'package:flutter/material.dart';
import '../components/default_button_component.dart';
import '../components/login_icon_title_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const <Widget>[
          Flexible(
            flex: 2,
            child: IconTitle(
              title: 'Shood App',
              uriImage: 'assets/images/placeholder_image_logo.png',
            ),
          ),
          Flexible(
            flex: 2,
            child: Text(
              'PAYOFF APP'
            )
          ),
          DefaultButton(
            text: 'Login',
          )
        ]
      )
    );
  }
}