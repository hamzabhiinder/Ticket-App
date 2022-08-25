import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Style.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(smallText,
              style: Style.textStyle.copyWith(color: Style.primaryColor)),
        ),
      ],
    );
  }
}
