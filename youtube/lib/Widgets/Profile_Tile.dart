import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_style.dart';

class ProfileList extends StatelessWidget {
  final String firstLetter;
  final String secondLetter;

  const ProfileList(
      {Key? key, required this.firstLetter, required this.secondLetter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(firstLetter, style: Style.headLineStyle3),
              Gap(AppLayout.getHeight(5)),
              Text('Miles.',
                  style: Style.headLineStyle4.copyWith(fontSize: 17.5)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(secondLetter, style: Style.headLineStyle3),
              Gap(AppLayout.getHeight(5)),
              Text('Recieve from',
                  style: Style.headLineStyle4.copyWith(fontSize: 17.5)),
            ],
          ),
        ],
      ),
    );
  }
}
