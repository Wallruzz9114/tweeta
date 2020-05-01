import 'package:flutter/material.dart';
import 'package:tweeta/src/screens/log_in_screen.dart';
import 'package:tweeta/src/screens/sign_up_screen.dart';

class Tweeta extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        title: 'Tweeta',
        debugShowCheckedModeBanner: false,
        home: LogInScreen(),
        routes: <String, Widget Function(BuildContext)>{
          LogInScreen.id: (BuildContext context) => LogInScreen(),
          SignUpScreen.id: (BuildContext context) => SignUpScreen(),
        },
      );
}
