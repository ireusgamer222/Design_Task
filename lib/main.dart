import 'package:design_task/screens/Login_Screen/Login_Screen.dart';
import 'package:design_task/screens/add_vioalation_success_screen/add_vioalation_success_screen.dart';
import 'package:design_task/screens/add_violation_screen/add_vioalation_screen.dart';
import 'package:design_task/screens/bottom_nav_bar_Screen/bottom_nav_bar_Screen.dart';
import 'package:design_task/screens/checking_account_Screen/checking_account_Screen.dart';
import 'package:design_task/screens/home_screen/home_screen.dart';
import 'package:design_task/screens/main_screen/main_Screen.dart';
import 'package:design_task/screens/my_account_screen/my_account_Screen.dart';
import 'package:design_task/screens/register_screen/register_screen.dart';
import 'package:design_task/screens/second_screen/second_Screen.dart';
import 'package:design_task/screens/services_screen/Services_screen.dart';
import 'package:design_task/screens/settings_screen/settings_Screen.dart';
import 'package:design_task/screens/track_of_vioalations_screen/track_of_vioalations_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:home_Screen(),
    );
  }
}


