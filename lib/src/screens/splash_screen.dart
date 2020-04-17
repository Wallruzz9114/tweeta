import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool userIsSignedIn = false;

  Text _buildSplashScreen() => const Text('Already signed in!');

  Scaffold _buildLoginScreen() => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Theme.of(context).accentColor,
                Theme.of(context).primaryColor
              ],
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tweeta',
                style: TextStyle(
                  fontSize: 92.0,
                  color: Colors.white,
                  fontFamily: 'Signatra',
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) =>
      userIsSignedIn ? _buildSplashScreen() : _buildLoginScreen();
}
