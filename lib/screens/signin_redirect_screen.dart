import 'package:djal_auto/screens/login_screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../utils/constans.dart';

class SigninRedirectScreen extends StatelessWidget {
  const SigninRedirectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).redirect_title,
              style: kHeadline3TS.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              S.of(context).login_subtitle,
              style: kBody2TS,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(S.of(context).action_login),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
