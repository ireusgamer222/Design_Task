import 'package:design_task/components/components.dart';
import 'package:design_task/consts/consts.dart';
import 'package:design_task/screens/track_of_vioalations_screen/track_of_vioalations_screen.dart';
import 'package:flutter/material.dart';



class Services_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xff12776B), Color(0xff6DB499)],
          )),
        child: Column(children: [
          const SizedBox(height: 30,),

          arrowback_and_settings(context),

          const SizedBox(height: 30,),
          
          profile_picture_and_the_whitecontainer(),

          const SizedBox(height: 20,),

          text_field_for_search(),

          const SizedBox(height:30 ,),

          text_for_signed_accounts("الخدمات",300),


          Container(
            height: 195,
          child : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context ,int index) {
            return containers_service(context,track_of_vialation_screen(),66,66,"assets/images/services_images/plussquare_120280 1.png","اضافة مخالفة",195,128,0xff134F1D,30,30,15);
          },
          itemCount: 5,)
          ),


        ],),

      );
  }

}