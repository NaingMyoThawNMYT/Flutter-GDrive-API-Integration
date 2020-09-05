import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required this.user,
    @required this.googleSignIn,
  })  : assert(user != null),
        assert(googleSignIn != null),
        super(key: key);

  final User user;
  final GoogleSignIn googleSignIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello ${user.displayName}!'),
      ),
    );
  }
}
