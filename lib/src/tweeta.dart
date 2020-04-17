import 'package:flutter/material.dart';
import 'package:tweeta/src/screens/root_screen.dart';

class Tweeta extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        title: 'Tweeta',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            dialogBackgroundColor: Colors.black,
            primarySwatch: Colors.grey,
            cardColor: Colors.white70,
            accentColor: Colors.black),
        home: RootScreen(),
      );
}
