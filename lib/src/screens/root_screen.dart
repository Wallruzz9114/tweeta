import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  bool userIsSignedIn = false;

  Text _buildRootScreen() => const Text('Already signed in!');

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
      userIsSignedIn ? _buildRootScreen() : _buildLoginScreen();
}
