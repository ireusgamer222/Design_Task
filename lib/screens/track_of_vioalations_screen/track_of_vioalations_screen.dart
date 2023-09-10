import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/components.dart';

class track_of_vialation_screen extends StatelessWidget {
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
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            arrowback_and_settings(context),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "متابعة مخالفة",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
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
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 83,
                      width: 113,
                      child: Image.asset(
                        "assets/images/dd 2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    Padding(padding: const EdgeInsets.only(right: 17,left:17) ,
                    child :ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context,int index){
                        return Containers_track_of_vioalations_screen();
                    }, separatorBuilder: (context, int index){
                      return const SizedBox(height: 20,);
                    }, itemCount: 6
                    )),


                  ],
                )),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                    "assets/images/bottom_nav_icons/PngItem_5768680 2.png"),
                color: Color(0xff255F3F),
              ),
              label: "الرئيسية"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                    "assets/images/bottom_nav_icons/1976053_home_home page_homepage_homepages_icon 2.png"),
                color: Color(0xff255F3F),
              ),
              label: "الرئيسية"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/bottom_nav_icons/22607-200 2.png"),
                color: Color(0xff255F3F),
              ),
              label: "الرئيسية"),
        ],
      ),
    );
  }
}
