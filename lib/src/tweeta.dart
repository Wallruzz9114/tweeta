import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tweeta/src/screens/feed_screen.dart';
import 'package:tweeta/src/screens/log_in_screen.dart';
import 'package:tweeta/src/screens/sign_up_screen.dart';

class Tweeta extends StatelessWidget {
  Widget _getScreen() => StreamBuilder<FirebaseUser>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) =>
            snapshot.hasData ? FeedScreen() : LogInScreen(),
      );

  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        title: 'Tweeta',
        debugShowCheckedModeBanner: false,
        home: _getScreen(),
        routes: <String, Widget Function(BuildContext)>{
          LogInScreen.id: (BuildContext context) => LogInScreen(),
          SignUpScreen.id: (BuildContext context) => SignUpScreen(),
          FeedScreen.id: (BuildContext context) => FeedScreen(),
        },
      );
}
