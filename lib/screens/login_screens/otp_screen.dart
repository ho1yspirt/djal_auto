import 'package:djal_auto/screens/root_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../generated/l10n.dart';
import '../../utils/constans.dart';
import '../../utils/themes.dart';

class OtpScreen extends StatefulWidget {
  static String id = 'otp_screen';

  final String verificationId;
  const OtpScreen({super.key, required this.verificationId});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String smsCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, 'login_screen', (route) => false);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/logo.png',
                width: 200,
              ),
            ),
            Text(
              S.of(context).verify_title,
              style: kHeadline2TS.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              S.of(context).verify_subtitle,
              style: kBody2TS,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Pinput(
                onChanged: (value) {
                  smsCode = value;
                },
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                showCursor: true,
              ),
            ),
            // Text(
            //   S.of(context).login_registration,
            //   textAlign: TextAlign.center,
            //   style: kBody2TS,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: widget.verificationId,
                            smsCode: smsCode);
                    await auth.signInWithCredential(credential);
                    Navigator.pushNamed(context, RootScreen.id);
                  } catch (e) {
                    if (kDebugMode) {
                      print('Error: Wrong OTP');
                    }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(S.of(context).action_verify),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
