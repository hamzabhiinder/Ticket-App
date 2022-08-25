import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/Screens/Hotel_Screen.dart';
import 'package:youtube/Screens/ticketView.dart';
import 'package:youtube/Widgets/AppDoubleTextIcon.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_info.dart';
import 'package:youtube/utils/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Style.headLineStyle3,
                        ),
                        Gap(3),
                        Text(
                          'Book Ticket',
                          style: Style.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img1.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text('Search', style: Style.headLineStyle4)
                    ],
                  ),
                ),
                Gap(30),
                const AppDoubleTextWidget(
                    bigText: 'Upcoming Flight', smallText: 'View all')
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleTextWidget(
                  bigText: 'Hotels', smallText: 'View all')),
          Gap(25),
          SingleChildScrollView(
            padding: EdgeInsets.only(right: AppLayout.getHeight(20)),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList
                  .map((singlehotel) => HotelScreen(hotel: singlehotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
