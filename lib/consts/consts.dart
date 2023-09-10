import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class consts{

  static const color1 = Color(0xff134F1D);


  Widget input_user = Container(
  width: 330,
  child: Column(children: [
  Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Text("اسم المستخدم"),
  Icon(Icons.person),
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


}