import 'package:design_task/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class my_account_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
         Container(
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
            const SizedBox(height: 10,),
            const Text("حسابي",style: TextStyle(fontSize:24 ,color: Colors.white,fontWeight: FontWeight.w700),),
            const SizedBox(height: 20,),
            
            Expanded(child: Container(
              padding: const EdgeInsets.all(32),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Column(crossAxisAlignment : CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  const Row(mainAxisAlignment : MainAxisAlignment.end,
                    children: [
                    Text("محمد احمد",style: TextStyle(color: Color(0xff767676),fontWeight: FontWeight.w400, fontSize: 20),),
                    SizedBox(width: 20,),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff147868),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/png-clipart-computer-icons-mobile-app-development-android-my-account-icon-blue-text 1.png'),
                        radius: 28,
                      ),
                    ),
                  ],),

                  const SizedBox(height: 10,),

                  const Text("البيانات الشخصية",style: TextStyle(color: Color(0xff565252),fontSize:20 ,fontWeight: FontWeight.w700),),

                  const SizedBox(height: 20,),

                  profile_info("الاسم", "محمد احمد"),
                  grey_line(),

                  const SizedBox(height: 20,),

                  profile_info("الاسم", "محمد احمد"),
                  grey_line(),

                  const SizedBox(height: 20,),

                  profile_info("الاسم", "محمد احمد"),
                  grey_line(),

                  const SizedBox(height: 20,),

                  profile_info("الاسم", "محمد احمد"),
                  grey_line(),

              ],),
            ))

          ],),
    )

    ;
  }
}
