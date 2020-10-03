import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:simrank/constant/colors.dart';
import '../constant/strings.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  final key = GlobalKey();
  List<Widget> list = List();
  TextEditingController msg = TextEditingController();
  Icon sendIcon = Icon(Icons.mic);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: MyColors.lightpurple,
                  height: size.height * 0.11,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20.0,
                            color: MyColors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.4,
                        margin: EdgeInsets.only(left: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              Strings.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "LogoFont",
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.whiteColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                Strings.subtitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: MyColors.whiteColor,
                                    fontFamily: "LogoText",
                                    fontSize: 18,
                                    letterSpacing: 0.3),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    size: 20,
                                    color: MyColors.whiteColor,
                                  ),
                                  label: Text(
                                    '1213',
                                    style:
                                        TextStyle(color: MyColors.whiteColor),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      MyColors.red,
                                      MyColors.lightOrangeText
                                    ],
                                    begin: FractionalOffset.centerLeft,
                                    end: FractionalOffset.centerRight,
                                  ),
                                ),
                                child: FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.video_call,
                                    size: 20,
                                    color: MyColors.whiteColor,
                                  ),
                                  label: Text(
                                    'LIVE',
                                    style:
                                        TextStyle(color: MyColors.whiteColor),
                                  ),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                )),
            Positioned(
              top: size.height * 0.11,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.85,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/model.jpg'),
                        fit: BoxFit.fill)),
                padding:
                    EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 50),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: 40,
                          width: size.width,
                          alignment: Alignment(0.0, 1.0),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 4, bottom: 4, left: 7, right: 7),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.05),
                                borderRadius: BorderRadius.circular(3)),
                            child: Text(
                              DateFormat('yyyy-MM-dd')
                                  .format(DateTime.now())
                                  .toString(),
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        alignment: Alignment(-1.0, 0.0),
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 20),
                                margin: EdgeInsets.only(
                                    bottom: 5, right: size.width * 0.05),
                                decoration: BoxDecoration(
                                  color: MyColors.lightpurple.withOpacity(0.3),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(2)),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/John.jpg"),
                                            fit: BoxFit.fill,
                                            alignment: Alignment.center),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Robert Sent an Emerald",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyColors.whiteColor),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/emerald.png"),
                                            fit: BoxFit.fill,
                                            alignment: Alignment.center),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: size.width,
                        alignment: Alignment(-1.0, 0.0),
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 20),
                                margin: EdgeInsets.only(
                                    bottom: 5, right: size.width * 0.05),
                                decoration: BoxDecoration(
                                  color: MyColors.lightpurple.withOpacity(0.3),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(2)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/John.jpg"),
                                            fit: BoxFit.fill,
                                            alignment: Alignment.center),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),

                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(left:5,),
                                            child: Text(
                                              "Shilpa :",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 0.3,
                                                  color: MyColors.whiteColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 160,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Text(
                                            "Can You Dance For me :D NOW",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: MyColors.whiteColor),
                                          ),
                                        ),
                                      ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width,
                        alignment: Alignment(-1.0, 0.0),
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20, right: 20),
                                margin: EdgeInsets.only(
                                    bottom: 5, right: size.width * 0.05),
                                decoration: BoxDecoration(
                                  color: MyColors.lightpurple.withOpacity(0.3),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(2)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/John.jpg"),
                                            fit: BoxFit.fill,
                                            alignment: Alignment.center),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                         Padding(
                                          padding: const EdgeInsets.only(left:5,),
                                          child: Text(
                                            "Allwyn :",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.3,
                                                color: MyColors.whiteColor),
                                          ),
                                        ),
                                      ],

                                    ),
                                    Container(
                                      width: 160,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          "I want to tell you that i live in Ulwe And that I am a programmer and a developer",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: MyColors.whiteColor),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment(1.0, 0.0),
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 20, right: 20),
                                  margin: EdgeInsets.only(
                                      bottom: 5, left: size.width * 0.15),
                                  decoration: BoxDecoration(
                                    color:
                                        MyColors.lightpurple.withOpacity(0.3),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(2)),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Hii...",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /*
            * text area
            * */
            Positioned(
              bottom: 0,
              right: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: size.width * 0.94,
                      decoration: BoxDecoration(
                        color: MyColors.purple,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: size.width * 0.5,
                            child: TextField(
                              controller: msg,
                              decoration: InputDecoration(
                                hintText: 'Type Your Message',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: MyColors.whiteColor,
                                  fontFamily: "LogoText",
                                ),
                              ),
                              cursorColor: Color.fromRGBO(157, 185, 63, 1),
                              autofocus: false,
                              cursorRadius: Radius.circular(5),
                              onChanged: (value) {
                                setState(() {
                                  (value.length > 0)
                                      ? sendIcon = Icon(Icons.send)
                                      : sendIcon = Icon(Icons.mic);
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  MyColors.lightblue,
                                  MyColors.lightpurple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.send),
                              color: MyColors.whiteColor,
                              splashColor: Colors.transparent,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    MyColors.darkpurple,
                                    MyColors.pinkvariaance,
                                  ],
                                ),
                                shape: BoxShape.circle),
                            child: IconButton(
                              icon: Icon(
                                Icons.card_giftcard,
                                color: MyColors.whiteColor,
                              ),
                              color: Color.fromRGBO(157, 179, 63, 1),
                              splashColor: Colors.transparent,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
