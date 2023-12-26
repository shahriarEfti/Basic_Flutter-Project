import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_test/Screens/BottomBar.dart';
import 'package:project_test/utils/app_styles.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: primary,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),

    );
  }
}
