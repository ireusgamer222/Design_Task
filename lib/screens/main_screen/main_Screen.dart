
import 'package:design_task/components/components.dart';
import 'package:design_task/consts/consts.dart';
import 'package:design_task/screens/add_violation_screen/add_vioalation_screen.dart';
import 'package:design_task/screens/track_of_vioalations_screen/track_of_vioalations_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class main_Screen extends StatefulWidget{

  _main_Screen createState() => _main_Screen();
}


class _main_Screen extends State<main_Screen>{

  @override
  Widget build(BuildContext context){
    return

      SingleChildScrollView ( child : Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff12776B),
                  Color(0xff6DB499)
                ],
              )
          ),

          child: Column(children: [
            const SizedBox(height: 30,),
            arrowback_and_settings(context),
            const SizedBox(height: 30,),
            profile_picture_and_the_whitecontainer(),
            const SizedBox(height: 40,),
            text_field_for_search(),
            const SizedBox(height: 20,),
            text_for_signed_accounts("المخالفات المضافة حديثا",220),
            const SizedBox(height: 20,),

            SizedBox(
                height: 97,
                child :
            ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,int index){
              return Containers_in_list_view();
            }, separatorBuilder: (context, int index){
              return const SizedBox(width: 15,);
            }, itemCount: 3)
            ),

            const SizedBox(height: 25,),
            text_for_signed_accounts("اهم الخدمات", 310),
            const SizedBox(height: 15,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              containers_service(context,track_of_vialation_screen(),45,33,"assets/images/dd 2.png","متابعة المخالفات",117,113,0xff62A362,22,11,11),
              containers_service(context,main_Screen(),39,39,"assets/images/services_images/2666469 2.png","رصد المخالفات",117,113,0xff4E9F3D,22,7,9),
              containers_service(context,add_vialation_screen(),37,37,"assets/images/services_images/plussquare_120280 1.png","اضافة مخالفة",117,113,0xff134F1D,22,7,7),

            ],),
            const SizedBox(height: 110,),



            ])));
  }

}