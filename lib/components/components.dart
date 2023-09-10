import 'dart:io';

import 'package:design_task/screens/my_account_screen/my_account_Screen.dart';
import 'package:design_task/screens/services_screen/Services_screen.dart';
import 'package:design_task/screens/settings_screen/settings_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/main_screen/main_Screen.dart';

Widget Green_Button(double Width, double Height, String text1, Widget Screen, context ) => GestureDetector(
    onTap: () {

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen));


    },
    child : Container(
      width: Width,
      height: Height,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Color(0xff147868),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius:4 ,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Center(child: Text(text1,style: const TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w400),),),
    )
);

Widget title_in_login_register_checking_screen (String text1,context) =>  Padding(
    padding: const EdgeInsets.only(left: 130),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            text1,
            style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.white),
          ),
        ),
        const SizedBox(
          width: 79,
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_outlined,
              size: 33,
              color: Colors.white,
            ))
      ],
    ));

Widget the_arabic_grey_text_and_language () =>  Padding(
    padding: EdgeInsets.only(left: 200),
    child: Container(
      width: 83,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "العربية",
            style: TextStyle(
                color: Colors.grey[300],
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          Icon(
            Icons.language_rounded,
            color: Colors.grey[300],
          ),
        ],
      ),
    ));

Widget the_text_field_input_design (String text1, IconData xd) =>  Container(
  width: 330,
  child: Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text1),
        Icon(xd),
      ],
    ),
    Container(
      padding: EdgeInsets.all(1),
      height: 63,
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(6)),
      child: TextField(),
    ),
  ]),
);

Widget title (String text) => Padding(
    padding: EdgeInsets.only(left: 130),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.white),
          ),
        ),
        SizedBox(
          width: 79,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_outlined,
              size: 33,
              color: Colors.white,
            ))
      ],
    ));

Widget containers_service(context,Widget Screen, double ImageWidth, double ImageHeight, String image1, String text1, double Height,double Width, int Color1, double InnerHeight, double InnerSizeBox1, double InnerSizeBox2 ) => GestureDetector(
    onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen));
    },
    child : Container(
  height:Height ,
  width:Width,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(21),
      color: Colors.white
  ),
  child: Column(children: [
    Container(
      width: double.infinity,
      height: InnerHeight,
      decoration: BoxDecoration(
          color: Color(Color1),
          borderRadius: const BorderRadius.only(topRight: Radius.circular(21),topLeft: Radius.circular(21))
      ),
    ),
    SizedBox(height: InnerSizeBox1,),
    SizedBox(width : ImageWidth, height :ImageHeight ,child :
    Image.asset(image1,fit: BoxFit.cover,),),

    SizedBox(height: InnerSizeBox2,),
    Text(text1,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
  ],),
));


// A List of of all screens with the arrow back Widget to be able to return to the last screen when clicked on the arrow back icon
List All_Screens_With_Arrow_Back = [Services_Screen(),
  main_Screen(),
  my_account_screen(),
  settings_Screen(),

];

// the settings icon and arrow back presented in all signed in acoounts screens
Widget arrowback_and_settings(BuildContext context) =>  Padding(padding: const EdgeInsets.only(right: 5,left: 5) ,child : Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    IconButton(onPressed: ()=> navigateToSettingsScreen(context), icon: Icon(Icons.settings,size: 30,color: Colors.white,)),
    IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_forward_outlined,size: 30,color: Colors.white,)),
  ],));

// Function to navigate to the settings screen, used in all signed in account screens
void navigateToSettingsScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => settings_Screen()));
}


Widget profile_picture_and_the_whitecontainer () => Container(
  padding: const EdgeInsets.all(7),
  width: 335,
  height: 167,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(26),
    color: const Color.fromRGBO(255, 255, 255, 0.47),
  ),
  child: const Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
    CircleAvatar(
      radius: 30,
      backgroundColor: Color(0xff147868),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/png-clipart-computer-icons-mobile-app-development-android-my-account-icon-blue-text 1.png'),
        radius: 28,
      ),
    ),
    SizedBox(height: 20,),

    Text("محمد احمد",style: TextStyle(color : Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
    Row(mainAxisAlignment : MainAxisAlignment.center, children: [
      Text("موقع المستخدم",style: TextStyle(color : Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),

    ],)
  ],),
);

Widget text_field_for_search () => Container(
  padding: EdgeInsets.all(5),
  width: 335,
  height: 40,
  decoration: BoxDecoration(
      borderRadius: BorderRadiusDirectional.circular(10),
      color: Colors.white
  ),
  child: TextFormField(
    textAlign: TextAlign.right,
    decoration: const InputDecoration(
      prefixIcon : Icon(Icons.search),
      hintText: "هل تبحث عن شي؟ ",
    ),
  ),
);

Widget text_for_signed_accounts(String text1,double padint) => Padding(
    padding: EdgeInsets.only(left: padint),
  child :Text(text1,
  style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700 ,fontSize: 20),));

Widget Containers_in_list_view() => Container(
  width: 243,
  height: 97,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadiusDirectional.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius:4 ,
        offset: Offset(4, 8), // Shadow position
      ),
    ],
  ),
  child: Column(mainAxisAlignment : MainAxisAlignment.start, children: [
    SizedBox(height: 10,),
    Padding(padding: EdgeInsets.only(left:150), child:
    Text("التشوه بصري",style: TextStyle(color : Color(0xff938B8B),fontWeight:FontWeight.w400 ,fontSize: 16),),
    ),
    Padding(padding: EdgeInsets.only(left: 130), child:
    Text("الكتابة علي الجدران",style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 13),)
    ),
  ],),
);

Widget grey_line() => Container(
  width: 270,
  height: 1,
  color : Color(0xff8F8989),
);

Widget profile_info (String text1, String text2,) => Container (
    padding: const EdgeInsets.only(right: 25),
    width: double.infinity,
    child : Column(crossAxisAlignment: CrossAxisAlignment.end,
        children : [
          Text(text1,style: const TextStyle(color: Color(0xff255F3F),fontWeight: FontWeight.w700,fontSize: 13)),
          Text(text2,style: const TextStyle(color: Color(0xff575252),fontWeight: FontWeight.w700,fontSize: 13)),
          const SizedBox(height: 5,),
        ]));

Widget green_text_in_settings (String text1) => Text(text1,style: const TextStyle(color: Color(0xff255F3F),fontWeight: FontWeight.w700,fontSize: 18));

Widget choices_in_settings_screen (List <String> choices, String text1) => Padding(padding: const EdgeInsets.only(right:70,left: 35), child :
Row(mainAxisAlignment : MainAxisAlignment.spaceBetween, children: [
  DropdownButtonHideUnderline(child:
  DropdownButton <String>(iconSize: 30,items: choices.map((String e) => DropdownMenuItem<String>(child: Text(e), value: e, )).toList() ,onChanged: (String? xd){
  }),
  ),

  green_text_in_settings(text1),


],),
);


Widget Containers_track_of_vioalations_screen() => Container(
  padding: const EdgeInsets.only(top: 15,right: 10,left: 10),
  height:102 ,
  width: 344,
  decoration: BoxDecoration(
    color:Colors.white ,
    borderRadius: BorderRadiusDirectional.circular(10),
    border: Border.all(color: const Color(0xff8F8989),width: 1),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius:4 ,
        offset: Offset(4, 8), // Shadow position
      ),
    ],
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Container(
              width: 96,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Color(0xff147868),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius:4 ,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: const Center(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("تعديل",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w400,fontSize:13 ),),
                  ImageIcon(AssetImage("assets/images/Screenshot 2022-03-27 124712 2.png"),
                    color: Colors.white,)
                ],),)
          ),

          Container(
            margin: const EdgeInsets.only(top: 7),
            child : TextButton(onPressed: () {}, child: const Text("المزيد من التفاصيل",style: TextStyle(decoration: TextDecoration.underline,color: Color(0xff338361),fontWeight: FontWeight.w400,fontSize: 10),)),
          ),
        ],
      ),

      Padding(padding: EdgeInsets.only(right: 15),
          child : Column(
            children: [
              Text("التشوه البصري",style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w400,color: Color(0xff938B8B)),),
              Text("الكتابة على الجدران",style: TextStyle(fontSize: 13,fontWeight:FontWeight.w400 ,)),
              Row(
                children: [
                  Text("مكة المكرمة",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                  const SizedBox(
                      height: 18,
                      width :26.5,
                      child : ImageIcon(AssetImage("assets/images/location_icon_176656 1.png"))
                  )
                ],
              )
            ],
          )),

    ],),
);