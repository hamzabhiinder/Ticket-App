import 'package:flutter/material.dart';
import 'package:youtube/Screens/bottom_bar.dart';
import 'package:youtube/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}
