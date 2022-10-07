import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:djal_auto/auth.dart';
import 'package:djal_auto/screens/user_screens/account_screen.dart';
import 'package:djal_auto/screens/exam_papers_screens/exam_papers_screen.dart';
import 'package:djal_auto/screens/home_screens/home_screen.dart';
import 'package:djal_auto/screens/signin_redirect_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class RootScreen extends StatefulWidget {
  static String id = 'root_screen';

  RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final user = Auth().currentUser!;

  static const pages = [
    HomeScreen(),
    // ? HomeScreen() : SigninRedirectScreen(),
    ExamPapersScreen(),
    AccountScreen(),
  ];

  int _currentBottomNavBarIndex = 0;

  List<String> UsersDocs = [];

  Future<void> getUserDocs() async {
    await FirebaseFirestore.instance.collection('user').get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              UsersDocs.add(document.reference.id);
            },
          ),
        );
  }

  @override
  void initState() {
    getUserDocs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[_currentBottomNavBarIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _currentBottomNavBarIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentBottomNavBarIndex = newIndex;
          });
        },
        destinations: [
          NavigationDestination(
            label: S.of(context).home,
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home_rounded),
          ),
          NavigationDestination(
            label: S.of(context).exam_papers,
            icon: const Icon(Icons.description_outlined),
            selectedIcon: const Icon(Icons.description_rounded),
          ),
          NavigationDestination(
            label: S.of(context).account,
            icon: const Icon(Icons.account_circle_outlined),
            selectedIcon: const Icon(Icons.account_circle_rounded),
          ),
        ],
      ),
    );
  }
}
