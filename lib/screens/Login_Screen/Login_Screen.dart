import 'package:design_task/screens/bottom_nav_bar_Screen/bottom_nav_bar_Screen.dart';
import 'package:design_task/screens/main_screen/main_Screen.dart';
import 'package:design_task/screens/register_screen/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/components.dart';

class Login_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xff12776B), Color(0xff6DB499)],
            )),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            title_in_login_register_checking_screen("تسحيل الدخول",context),
            const SizedBox(
              height: 30,
            ),

            Expanded(
                child: Container(
              width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const SizedBox(
                    height: 40,
                  ),

                 the_arabic_grey_text_and_language(),

                  const SizedBox(
                    height: 60,
                  ),

                  the_text_field_input_design("اسم المستخدم", Icons.person),


                  const SizedBox(
                    height: 40,
                  ),

                  the_text_field_input_design("كلمة المرور", Icons.lock),



                  const SizedBox(height: 30,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Green_Button(281,49,"دخول", bottom_nav_bar_screen(), context),

                      const SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {_navigateToNextScreen(context);}, child: const Text("سجل الان",style: TextStyle(decoration: TextDecoration.underline,color: Color(0xff2F8254),fontWeight: FontWeight.w400,fontSize: 14),)),
                          const Text("ليس لديك حساب؟",style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w400 ,color: Color(0xff9E9FAC)),),
                        ],
                      )
                    ],
                  )
                ],
              ),

            )),
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => register_Screen()));
  }
}
