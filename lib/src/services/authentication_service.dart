import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tweeta/src/screens/feed_screen.dart';
import 'package:tweeta/src/screens/log_in_screen.dart';

class AuthenticationService {
  final FirebaseAuth _authenticationInstance = FirebaseAuth.instance;
  final Firestore _firestoreInstance = Firestore.instance;

  Future<void> signUp(BuildContext context, String username, String email,
      String password) async {
    try {
      final AuthResult authenticationResult = await _authenticationInstance
          .createUserWithEmailAndPassword(email: email, password: password);
      final FirebaseUser signedInUser = authenticationResult.user;

      if (signedInUser != null) {
        _firestoreInstance
            .collection('users')
            .document(signedInUser.uid)
            .setData(<String, dynamic>{
          'username': username,
          'email': email,
          'profileImage': '',
        });

        // Navigate to the feed screen
        Navigator.pushReplacementNamed(context, FeedScreen.id);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut(BuildContext context) async {
    _authenticationInstance.signOut();
    // Back to login screen
    Navigator.pushReplacementNamed(context, LogInScreen.id);
  }

  Future<void> login(String email, String password) async {
    _authenticationInstance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
