import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';

Widget lead(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 40.0,
        width: 40.0,
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            size: 26.0,
          ),
        ),
      ),
    ],
  );
}
Widget titlename(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        Strings.title + '\n' + Strings.subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
      Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            // color: MyColors.gray,
          ),
          child: Image.asset('assets/images/diamond2.png')
      ),
    ],
  );
}