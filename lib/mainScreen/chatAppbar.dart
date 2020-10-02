import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';

Widget lead() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
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

Widget titlename() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: [
          Text(
            Strings.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "LogoFont",
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              Strings.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "LogoText",
                  fontSize: 18,
                letterSpacing: 0.3
              ),
            ),
          ),
        ],
      ),

    ],
  );
}

Widget action(BuildContext context){
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              size: 20.0,
              color: MyColors.whiteColor,
            ),
          ),
        ),
        Container(
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.search,
              size: 20.0,
            ),
          ),
        ),
      ],
    ),
  );
}
