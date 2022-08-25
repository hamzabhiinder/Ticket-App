import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/Screens/ticketView.dart';
import 'package:youtube/Widgets/Layout_Builder.dart';
import 'package:youtube/Widgets/column_layout.dart';
import 'package:youtube/Widgets/ticket_tabs.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_info.dart';
import 'package:youtube/utils/app_style.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('Tickets', style: Style.headLineStyle1.copyWith(fontSize: 40)),
          Gap(AppLayout.getHeight(25)),
          const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
          Gap(AppLayout.getHeight(25)),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: TicketView(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          SizedBox(height: 1),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15), vertical: 15),
            margin: EdgeInsets.only(left: 15, right: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: 'Flutter DB',
                      secondText: 'Passenger',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: '5221 364589',
                      secondText: 'passport',
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15), vertical: 15),
            margin: EdgeInsets.only(left: 15, right: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: 'Flutter DB',
                      secondText: 'Passenger',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: '5221 364589',
                      secondText: 'passport',
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15), vertical: 15),
            margin: EdgeInsets.only(left: 15, right: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: 'Flutter DB',
                      secondText: 'Passenger',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: '5221 364589',
                      secondText: 'passport',
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15), vertical: 15),
            margin: EdgeInsets.only(left: 15, right: 15),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: 'Flutter DB',
                      secondText: 'Passenger',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: '5221 364589',
                      secondText: 'passport',
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 1),

          ///BARCODE
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 15, right: 15),
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'https://github.com/hamzabhiinder',
                  drawText: false,
                  color: Style.textColor,
                  width: double.infinity,
                  height: 70,
                ),
              ),
            ),
          ),
          Gap(20),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: TicketView(
              ticket: ticketList[0],
            ),
          ),
        ],
      ),
    );
  }
}
