import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:youtube/utils/Applayout.dart';
import 'package:youtube/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      margin: EdgeInsets.only(
          left: AppLayout.getHeight(17), top: AppLayout.getHeight(5)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getHeight(17)),
      decoration: BoxDecoration(
          color: Style.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: AppLayout.getHeight(20),
              spreadRadius: AppLayout.getHeight(5),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(13)),
              color: Style.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/${hotel['image']}',
                ),
              ),
            ),
          ),
          Gap(10),
          Text(
            hotel['place'],
            style: Style.headLineStyle2.copyWith(color: Style.kakiColor),
          ),
          Gap(5),
          Text(
            hotel['destination'],
            style: Style.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(8),
          Text(
            " \$${hotel['price']}/night",
            style: Style.headLineStyle1.copyWith(color: Style.kakiColor),
          ),
        ],
      ),
    );
  }
}
