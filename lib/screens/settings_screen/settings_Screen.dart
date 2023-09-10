import 'package:design_task/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settings_Screen extends StatefulWidget {
  _settings_Screen createState() => _settings_Screen();
}

class _settings_Screen extends State<settings_Screen> {

  List <String> choices = ["hello","tests","yea","xd"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xff12776B), Color(0xff6DB499)],
      )),
      child: SingleChildScrollView( child : Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          arrowback_and_settings(context),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "الاعدادات",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),

              Container(

            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child : Column(children: [
              const SizedBox(height: 30,),
              const Text("اعدادات الحساب",style: TextStyle(color: Color(0xff565252),fontSize: 20,fontWeight: FontWeight.w700),),
              const SizedBox(height: 40,),


              choices_in_settings_screen(choices,"اللغة"),
              const SizedBox(height: 5,),
              grey_line(),
              const SizedBox(height: 10,),

              choices_in_settings_screen(choices,"اللغة"),
              const SizedBox(height: 5,),
              grey_line(),
              const SizedBox(height: 10,),

              choices_in_settings_screen(choices,"اللغة"),
              const SizedBox(height: 5,),
              grey_line(),
              const SizedBox(height: 30,),

              const Text("الدعم",style: TextStyle(color: Color(0xff565252),fontSize: 20,fontWeight: FontWeight.w700),),
              const SizedBox(height: 5,),

              choices_in_settings_screen(choices,"اللغة"),
              const SizedBox(height: 5,),
              grey_line(),
              const SizedBox(height: 10,),

              choices_in_settings_screen(choices,"اللغة"),
              const SizedBox(height: 5,),
              grey_line(),
              const SizedBox(height: 10,),

              choices_in_settings_screen(choices,"اللغة"),
              const SizedBox(height: 5,),
              grey_line(),
              const SizedBox(height: 10,),


            ],)
          ),
        ],
      )),
    ),

      bottomNavigationBar:  Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child : ClipRRect(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
              child : BottomNavigationBar(
                onTap: (int index) {

                },
                items: const [
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/bottom_nav_icons/PngItem_5768680 2.png"), color: Color(0xff255F3F),) ,label: "الرئيسية"),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/bottom_nav_icons/1976053_home_home page_homepage_homepages_icon 2.png"), color: Color(0xff255F3F),) ,label: "الرئيسية"),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/bottom_nav_icons/22607-200 2.png"), color: Color(0xff255F3F),) ,label: "الرئيسية"),
                ],))),);
  }
}
