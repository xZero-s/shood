import 'dart:developer';

import 'package:flutter/material.dart';
import '../components/default_button_component.dart';
import '../components/login_icon_title_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: Colors.green),
          child: Column(children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.purple),
                child: const IconTitle(
                  title: 'Shood App',
                  uriImage: 'assets/images/placeholder_image_logo.png',
                ),
              ),
            ),
            Flexible(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(color: Colors.orange),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'PAYOFF APP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                )),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  DefaultButton(text: 'GET STARTED'),
                  DefaultTextButton(text: 'Register')
                ],
              ),
            )
          ]),
        ));
  }
}

class DefaultTextButton extends StatelessWidget {
  final String text;
  const DefaultTextButton({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => log('Register link pressed!'),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'OpenSans',
              color: Colors.white),
        ));
  }
}
