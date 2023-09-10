import 'package:design_task/components/components.dart';
import 'package:design_task/screens/Login_Screen/Login_Screen.dart';
import 'package:design_task/screens/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second_Screen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(

      body: SingleChildScrollView(

        child: Stack(
          children: [
            Image.asset('assets/images/Al-Riyad1 1.png',
              width: double.infinity,fit: BoxFit.cover,),

            Column(children: [
              const SizedBox(height: 31,),
                Container(
                  child: const Center( child :
                  Text("مرحبا بك",style:TextStyle(fontWeight: FontWeight.w700,fontSize: 50,color: Colors.white),),
                  ),
                  ),
              const SizedBox(height: 300),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Column(children: [
                  const SizedBox(height: 30,),

                  Green_Button(304,57,"تسجيل الدخول",Login_Screen(),context),

                  const SizedBox(height: 30,),

                  const Text("المتابعة كضيف",style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:14 ,color: Color(0xff2F8254)),),

                  const SizedBox(height: 30,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    Container(
                      height: 1,
                      width: 144,
                      color: Color(0xffBEB3B3),
                    ),
                    const Text("او",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400,color: Color(0xffBEB3B3) ),),
                    Container(
                      height: 1,
                      width: 144,
                      color: Color(0xffBEB3B3),
                    ),

                  ],),

                  const SizedBox(height: 50,),

                  GestureDetector(
                    onTap:() => _navigateToNextScreen(context),
                  child : Container(
                    height: 57,
                    width:304,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      border: Border.all(width: 1,color: const Color(0xff147868)),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius:4 ,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: const Center(child: Text("انشاء حساب جديد",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400 ,color: Color(0xff147868)),),),
                  )
                  ),
                  const SizedBox(height: 50,),

                ],),
                
              )

            ],)
              ],),
      ),
    );

  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => register_Screen()));
  }
}