import 'package:design_task/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checking_account_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _checking_Account_Screen();
}

class _checking_Account_Screen extends State<checking_account_Screen> {
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
            title("تسحيل الدخول"),
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
                  const Text(
                    "ادخل الرقم المرسل لهاتفك",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        width: 64,
                        height: 63,
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          decoration:
                              InputDecoration(focusedBorder: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        width: 64,
                        height: 63,
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          decoration:
                              InputDecoration(focusedBorder: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        width: 64,
                        height: 63,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          decoration:
                              InputDecoration(focusedBorder: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        width: 64,
                        height: 63,
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                          decoration:
                              InputDecoration(disabledBorder: InputBorder.none),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
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
}
