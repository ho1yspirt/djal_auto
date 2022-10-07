import 'package:djal_auto/utils/constans.dart';
import 'package:flutter/material.dart';

class SinglePaperButton extends StatelessWidget {
  final int index;
  final VoidCallback onTap;
  const SinglePaperButton({Key? key, required this.index, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: kSurfaceColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            index.toString(),
            style: kHeadline2TS,
          ),
        ),
      ),
    );
  }
}
