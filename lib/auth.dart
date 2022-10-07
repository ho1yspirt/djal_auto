import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> verifyPhoneNumber(
      {required String phoneNumber,
      required dynamic verificationCompleted,
      required dynamic verificationFailed,
      required dynamic codeSent,
      required dynamic codeAutoRetrievalTimeout}) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
