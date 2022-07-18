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
        decoration: const BoxDecoration(
          color: Colors.green
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.purple
                ),
                child: const IconTitle(
                  title: 'Shood App',
                  uriImage: 'assets/images/placeholder_image_logo.png',
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.orange
                ),
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
              )
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  DefaultButton(
                    text: 'Login',
                  ),
                ],
              ),
            )
          ]
        ),
      )
    );
  }
}