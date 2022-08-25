import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: isColor == null
                ? Style.headLineStyle3.copyWith(color: Colors.white)
                : Style.headLineStyle3.copyWith(color: Colors.black)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,
            style: isColor == null
                ? Style.headLineStyle4.copyWith(color: Colors.white)
                : Style.headLineStyle4),
      ],
    );
  }
}
