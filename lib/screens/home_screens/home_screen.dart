import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../utils/constans.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          S.of(context).home,
          style: kAppBarTS,
        ),
      ),
      body: Container(),
    );
  }
}
