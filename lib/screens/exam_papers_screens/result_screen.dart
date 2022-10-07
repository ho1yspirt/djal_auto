import 'package:djal_auto/screens/root_screen.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../utils/constans.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int outOf;
  const ResultScreen({super.key, required this.score, required this.outOf});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              score < 18 ? S.of(context).failure : S.of(context).success,
              style: kHeadlineTS.copyWith(color: kPrimaryColor),
            ),
            Text(
              '${S.of(context).your_score_is}$score/$outOf',
              style: kBody1TS,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RootScreen(),
            ),
          );
        },
        icon: const Icon(Icons.arrow_back_rounded),
        label: Text(S.of(context).action_exit),
      ),
    );
  }
}
