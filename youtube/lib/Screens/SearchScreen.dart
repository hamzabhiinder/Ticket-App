import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/Widgets/Icon_Text_widget.dart';
import 'package:youtube/Widgets/ticket_tabs.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_style.dart';

import '../Widgets/AppDoubleTextIcon.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are \nyou looking for?',
            style: Style.headLineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          //for TAbs T
          const AppTicketTabs(firstTab: 'Airline tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: Color.fromARGB(255, 10, 76, 129),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'find ticketss',
                  style: Style.textStyle.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          Gap(40),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flight', smallText: 'View all'),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(17)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 2,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/imginside.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% Discount on early booking on this flight. Don't miss out this chance.",
                      style: Style.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  //Discount For suvey
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(190),
                        padding: EdgeInsets.all(AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(15)),
                            color: Color(0xFF3AB8B8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor survey',
                              style: Style.headLineStyle1
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(12)),
                            Text(
                              'Take the survey about our service and get a discount',
                              style: Style.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 17, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(190),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        color: Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Style.headLineStyle1.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(15)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 30),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 36),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 30),
                          ),
                        ])),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
