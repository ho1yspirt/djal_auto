import 'package:djal_auto/screens/root_screen.dart';
import 'package:djal_auto/utils/constans.dart';
import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:djal_auto/auth.dart';
import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  static String verifyNumber = '';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController countryCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  String? errorMessage = '';
  String phoneNumber = '';

  Future<void> signInWithPhoneNumber() async {
    try {
      await Auth().verifyPhoneNumber(
        // create user by verifying user's phone number
        phoneNumber: countryCodeController.text + phoneNumberController.text,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          LoginScreen.verifyNumber = verificationId;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(
                verificationId: LoginScreen.verifyNumber,
              ),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  void initState() {
    countryCodeController.text = '+996';
    super.initState();
  }

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
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/logo.png',
                width: 200,
              ),
            ),
            Text(
              S.of(context).login_title,
              style: kHeadline2TS.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              S.of(context).login_subtitle,
              style: kBody2TS,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: 64,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: kSurfaceColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 64,
                      child: TextField(
                        controller: countryCodeController,
                        decoration: InputDecoration(
                          hintText: S.of(context).country_code_hint_text,
                        ),
                        style: const TextStyle(color: kPrimaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: kVerticalDivider,
                    ),
                    Expanded(
                      child: TextField(
                        controller: phoneNumberController,
                        onChanged: (value) {
                          phoneNumber = value;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: S.of(context).phone_hint_text),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              S.of(context).login_registration,
              textAlign: TextAlign.center,
              style: kBody2TS,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: () async {
                    signInWithPhoneNumber();
                    // await FirebaseAuth.instance.verifyPhoneNumber(
                    //   phoneNumber: countryCodeController.text + phoneNumber,
                    //   verificationCompleted:
                    //       (PhoneAuthCredential credential) {},
                    //   verificationFailed: (FirebaseAuthException e) {},
                    //   codeSent: (String verificationId, int? resendToken) {
                    //     LoginScreen.verifyNumber = verificationId;

                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => OtpScreen(
                    //           verificationId: LoginScreen.verifyNumber,
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   codeAutoRetrievalTimeout: (String verificationId) {},
                    // );
                  },
                  child: Text(S.of(context).action_send_code),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RootScreen.id,
                );
              },
              child: Text(S.of(context).action_continue_as_guest),
            ),
          ],
        ),
      ),
    );
  }
}
