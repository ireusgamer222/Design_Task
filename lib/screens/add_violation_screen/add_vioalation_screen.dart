import 'package:design_task/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_vialation_screen extends StatefulWidget {
  _add_vialation_screen createState() => _add_vialation_screen();
}

class _add_vialation_screen extends State<add_vialation_screen> {
  List<String> choices = ["hello", "tests", "yea", "xd"];
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
            "اضافة مخالفة",
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
                    const SizedBox(height: 40,),
                     Container(
                      height:96 ,
                      width:87 ,
                      child: Image.asset("assets/images/services_images/plussquare_120280 1.png", fit: BoxFit.cover,),
                    ),

                    const SizedBox(height: 30,),


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

                    const Text("اضافة صور",style: TextStyle(color: Color(0xff255F3F),fontSize: 20,fontWeight: FontWeight.w700),),
                    const SizedBox(height: 20,),

                    Container(
                      width: 270,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(11),
                        border: Border.all(width: 1)
                      ),
                      child: Center(child: Image.asset("assets/images/Group 104.png"),),
                    ),

                    const SizedBox(height: 50,),


                  ],)
              ),


        ],
      )),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/bottom_nav_icons/PngItem_5768680 2.png"), color: Color(0xff255F3F),) ,label: "الرئيسية"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/bottom_nav_icons/1976053_home_home page_homepage_homepages_icon 2.png"), color: Color(0xff255F3F),) ,label: "الرئيسية"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/bottom_nav_icons/22607-200 2.png"), color: Color(0xff255F3F),) ,label: "الرئيسية"),
        ],),
    );
  }
}
