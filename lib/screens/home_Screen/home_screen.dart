import 'package:design_task/screens/second_screen/second_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_Screen extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    Future.delayed(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      Navigator.push(context, MaterialPageRoute(builder: (_) => Second_Screen()));
    });
    return Scaffold(
      body: SafeArea( child : Stack(
        children: [
          Image.asset('assets/images/Completed-Makkah-Royal-Hotel-Clock-Tower-in-Saudi--iphone-12-pro-max 1.png',
            width: double.infinity,fit: BoxFit.cover,),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child : Center(
                    child :
                    Column( children : [
                      Text("Esnad | اسناد", style: TextStyle(color: Colors.white, fontSize: 36,fontWeight:FontWeight.w700,)),
                      Text("بلدية الشرائع", style: TextStyle(color: Colors.white, fontSize: 16,fontWeight:FontWeight.w700,)),
                    ]),

              )
            ),
            ],
          ),

          Column(mainAxisAlignment : MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
              padding: EdgeInsets.only(left: 40,right: 40),
              child : Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children : [
                  Image.asset("assets/images/unnamed1 1.png"),
                  Image.asset("assets/images/CC] 1.png"),
                  Image.asset("assets/images/D 1.png"),
                  Image.asset("assets/images/B 1.png"),
                ],),),
             SizedBox(
               height: 36,
             ),
            ],)



      ],
      ),
      ),
    );
  }
}