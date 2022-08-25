import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/Widgets/Profile_Tile.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(30)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Picture Contianer

              Container(
                height: AppLayout.getHeight(75),
                width: AppLayout.getHeight(75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img1.png'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets',
                      style: Style.headLineStyle1.copyWith(fontSize: 34)),
                  Text('New-York', style: Style.headLineStyle4),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getWidth(2)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              Column(
                children: [
                  Gap(AppLayout.getHeight(7.5)),
                  InkWell(
                    onTap: () {
                      print('You are Tapped');
                    },
                    child: Text('Edit',
                        style: Style.textStyle.copyWith(
                          color: Style.primaryColor,
                        )),
                  )
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey[400]),
          Gap(AppLayout.getHeight(15)),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(93, 113, 165, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    //Bulb
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Color.fromRGBO(93, 133, 166, 1),
                        size: 30,
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've got a new award",
                              style: Style.headLineStyle2.copyWith(
                                  fontSize: 22.5, color: Colors.white)),
                          Text('You have 150 flights in a year',
                              style: Style.headLineStyle4
                                  .copyWith(fontSize: 15, color: Colors.white))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -42,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 17, color: Color.fromRGBO(66, 89, 190, 1)),
                    color: Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(15)),
          Text(
            'Accumulated miles',
            style: Style.headLineStyle1,
          ),
          Gap(AppLayout.getHeight(25)),
          Center(
              child: Text(' 192802',
                  style: Style.headLineStyle1
                      .copyWith(fontSize: 45, fontWeight: FontWeight.w500))),
          Gap(AppLayout.getHeight(20)),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accured', style: Style.headLineStyle4),
                    Text('23 May 2021', style: Style.headLineStyle4),
                  ],
                ),
                Divider(color: Colors.grey.shade200),
                ProfileList(firstLetter: '23 042', secondLetter: 'Airline CO'),
                Divider(color: Colors.grey.shade300),
                ProfileList(firstLetter: '24', secondLetter: "McDonal's"),
                Divider(color: Colors.grey.shade300),
                ProfileList(firstLetter: '52 340', secondLetter: "Exuma"),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(10)),

          Divider(color: Colors.grey.shade300),

          Center(
            child: Text('How to get more mile', style: Style.headLineStyle4),
          ),
          // Stack(
          //   children: [
          //     Container(
          //       height: AppLayout.getHeight(150),
          //       padding: EdgeInsets.all(AppLayout.getHeight(15)),
          //       decoration: BoxDecoration(
          //           borderRadius:
          //               BorderRadius.circular(AppLayout.getHeight(15)),
          //           color: Color(0xFF3AB8B8)),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Discount \nfor survey',
          //             style: Style.headLineStyle1.copyWith(color: Colors.white),
          //           ),
          //           Gap(AppLayout.getHeight(12)),
          //           Text(
          //             'Take the survey about our service and get a discount',
          //             style: Style.headLineStyle3.copyWith(color: Colors.white),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Positioned(
          //       right: -45,
          //       top: -40,
          //       child: Container(
          //         padding: EdgeInsets.all(AppLayout.getHeight(30)),
          //         decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             border: Border.all(width: 17, color: Color(0xFF189999)),
          //             color: Colors.transparent),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
