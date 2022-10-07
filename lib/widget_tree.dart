import 'package:djal_auto/auth.dart';
import 'package:djal_auto/screens/login_screens/login_screen.dart';
import 'package:djal_auto/screens/root_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RootScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
