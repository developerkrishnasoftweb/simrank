import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:simrank/constant/colors.dart';

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
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/model.jpg'),
                fit: BoxFit.fill
              )
            ),
            padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 50),
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
                                  bottom: 5, right: size.width * 0.15),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.04),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(2)),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Hey! I am your Nutritionist. I'd be happy to help you out in achieving your health Goals and create a customised diet for you.",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              )),
                        ),
                        Text(
                          DateFormat('h:mm a')
                              .format(DateTime.now())
                              .toString(),
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                                  bottom: 5, right: size.width * 0.15),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.04),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(2)),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Hey! I am your Nutritionist. I'd be happy to help you out in achieving your health Goals and create a customised diet for you.",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              )),
                        ),
                        Text(
                          DateFormat('h:mm a')
                              .format(DateTime.now())
                              .toString(),
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                                  bottom: 5, right: size.width * 0.15),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.04),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(2)),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Hey! I am your Nutritionist. I'd be happy to help you out in achieving your health Goals and create a customised diet for you.",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              )),
                        ),
                        Text(
                          DateFormat('h:mm a')
                              .format(DateTime.now())
                              .toString(),
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                                  bottom: 5, right: size.width * 0.15),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.04),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(2)),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Hiii...",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              )),
                        ),
                        Text(
                          DateFormat('h:mm a')
                              .format(DateTime.now())
                              .toString(),
                          style: TextStyle(fontSize: 13),
                        )
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
                                color: Color.fromRGBO(157, 179, 63, 1),
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
                        Text(
                          DateFormat('h:mm a')
                              .format(DateTime.now())
                              .toString(),
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ],
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
                          width: size.width * 0.5,
                          child: TextField(
                            controller: msg,
                            decoration: InputDecoration(
                              hintText: 'Type Your Message',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: MyColors.whiteColor,fontFamily: "LogoText",),
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
                            gradient: LinearGradient(colors: [MyColors.lightblue, MyColors.lightpurple],
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
                            shape: BoxShape.circle
                          ),
                          child: IconButton(
                            icon: Icon(Icons.card_giftcard,color: MyColors.whiteColor,),
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
    );
  }
}
