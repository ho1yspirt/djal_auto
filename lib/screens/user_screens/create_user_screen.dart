import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../auth.dart';
import '../../generated/l10n.dart';
import '../../utils/constans.dart';
import '../login_screens/otp_screen.dart';

class CreateUserScreen extends StatefulWidget {
  static String id = 'create_user_screen';
  static String verifyNumber = '';
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  List<bool> isSelected = [true, false, false];

  final TextEditingController countryCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController groupNumberController = TextEditingController();

  String? errorMessage = '';
  String phoneNumber = '';
  String fullName = '';
  String groupNumber = '';

  Future<void> verifyPhoneNumber() async {
    try {
      await Auth().verifyPhoneNumber(
        // create user by verifying user's phone number
        phoneNumber: countryCodeController.text + phoneNumberController.text,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          CreateUserScreen.verifyNumber = verificationId;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(
                verificationId: CreateUserScreen.verifyNumber,
              ),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      // add user's details
      addUserDetails(
        fullName,
        groupNumber,
        countryCodeController.text + phoneNumberController.text,
        isSelected[0],
        isSelected[1],
        isSelected[2],
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> addUserDetails(
    String fullName,
    String groupNumber,
    String phoneNumber,
    bool isStudent,
    bool isAdmin,
    bool isAutoInstructor,
  ) async {
    await FirebaseFirestore.instance.collection('users').add(
      {
        'fullName': fullName,
        'groupNumber': groupNumber,
        'phoneNumber': phoneNumber,
        'isStudent': isStudent,
        'isAdmin': isAdmin,
        'isAutoInstructor': isAutoInstructor,
      },
    );
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          S.of(context).action_create_user,
          style: kAppBarTS,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              buildTop(
                title: S.of(context).fullname,
              ),
              buildTextFieldDecoration(
                  child: TextField(
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  fullName = value;
                },
                controller: fullNameController,
              )),
              kVerticalPadding,
              buildTop(title: S.of(context).number_of_group),
              buildTextFieldDecoration(
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    groupNumber = value;
                  },
                  controller: groupNumberController,
                ),
              ),
              kVerticalPadding,
              buildTop(title: S.of(context).phone_number),
              buildTextFieldDecoration(
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
                        onChanged: (value) {
                          phoneNumber = value;
                        },
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: S.of(context).phone_hint_text),
                      ),
                    ),
                  ],
                ),
              ),
              kVerticalPadding,
              SizedBox(
                width: double.infinity,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return ToggleButtons(
                      constraints: BoxConstraints.expand(
                          height: 56, width: (constraints.maxWidth - 12) / 3),
                      isSelected: isSelected,
                      onPressed: (int index) {
                        setState(() {
                          for (int indexToggle = 0;
                              indexToggle < isSelected.length;
                              indexToggle++) {
                            if (indexToggle == index) {
                              isSelected[indexToggle] = true;
                            } else {
                              isSelected[indexToggle] = false;
                            }
                          }
                        });
                      },
                      children: [
                        Text(S.of(context).is_student),
                        Text(S.of(context).is_admin),
                        Text(S.of(context).is_auto_instructor),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () async {
                      verifyPhoneNumber();
                    },
                    child: Text(S.of(context).action_create_user),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTop({required String title}) => Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kSurfaceColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: Text(
            title,
            style: kBody2TS.copyWith(color: kPrimaryColor),
          ),
        ),
      );

  Widget buildTextFieldDecoration({required Widget child}) {
    return Container(
      alignment: Alignment.center,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: kSurfaceColor),
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
      ),
      child: child,
    );
  }
}
