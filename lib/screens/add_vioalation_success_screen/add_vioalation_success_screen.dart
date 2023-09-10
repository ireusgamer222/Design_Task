import 'package:design_task/components/components.dart';
import 'package:design_task/screens/main_screen/main_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_vialation_screen_success extends StatelessWidget {

  void _navigateToMainScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => main_Screen()));
  }


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
                    const SizedBox(height: 80,),
                    SizedBox(
                      width:155 ,
                      height:155 ,
                      child : Image.asset("assets/images/—Pngtree—check mark icon_3566317 1.png",fit: BoxFit.cover,),
                    ),

                    const SizedBox(height: 20,),

                    const Text("تمت اضافة المخالفة بنجاح",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Color(0xff2F8254)),),

                    const SizedBox(height: 70,),

                    Green_Button(281,49,"العودة للصفحة الرئيسية",main_Screen(),context),

                    const SizedBox(height: 200,),


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