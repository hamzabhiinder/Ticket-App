import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/Widgets/Layout_Builder.dart';
import 'package:youtube/Widgets/column_layout.dart';
import 'package:youtube/Widgets/thick_Container.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_style.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(153),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //THIS CONTAINER FOR BLUE AREA
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Style.headLineStyle3.copyWith(color: Colors.white)
                            : Style.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: isColor),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: AppLayoutBuilder(
                              section: 6,
                              isColor: isColor,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Color(0xFFBACCF7),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      ThickContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Style.headLineStyle3.copyWith(color: Colors.white)
                            : Style.headLineStyle3,
                      )
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Style.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Style.headLineStyle4),
                      ),
                      Text(ticket['flying_time'],
                          style: isColor == null
                              ? Style.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle4),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Style.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Style.headLineStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null ? Style.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade400,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ))),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: AppLayout.getWidth(5),
                                  height: AppLayout.getHeight(1),
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade400)),
                                )),
                      );
                    },
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade400,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ))),
                  ),
                ],
              ),
            ),

            //this is for Bottom card
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Style.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        AppLayout.getHeight(isColor == null ? 21 : 0)),
                    bottomRight: Radius.circular(
                        AppLayout.getHeight(isColor == null ? 21 : 0))),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(16),
                  top: AppLayout.getHeight(8),
                  bottom: AppLayout.getHeight(16),
                  right: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        isColor: isColor,
                        firstText: ticket['date'],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       ticket['date'],
                      //       style: isColor == null
                      //           ? Style.headLineStyle3
                      //               .copyWith(color: Colors.white)
                      //           : Style.headLineStyle3,
                      //     ),
                      //     Gap(5),
                      //     Text(
                      //       'Date',
                      //       style: isColor == null
                      //           ? Style.headLineStyle4
                      //               .copyWith(color: Colors.white)
                      //           : Style.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                        isColor: isColor,
                        firstText: ticket['departure_time'],
                        secondText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnLayout(
                        isColor: isColor,
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.center,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
