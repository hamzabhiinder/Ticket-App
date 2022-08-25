
import 'package:flutter/material.dart';
import 'package:youtube/utils/Applayout.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int section;
  const AppLayoutBuilder({Key? key, this.isColor, required this.section}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / section).floor(),
              (index) => SizedBox(
                    width: AppLayout.getWidth(3),
                    height: AppLayout.getHeight(1),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.white
                              : Colors.grey.shade400),
                    ),
                  )),
        );
      },
    );
  }
}
