import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';
import 'appbar_bottombar.dart';

class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primarycolors,
        elevation: 0,
        leading: lead(context),
        actions: [action(context)],
        title: titlename(context),
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: MyColors.primarycolors,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 15),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 138, 191, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(0, 2)),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: MyColors.darkprimarycolor,
                            height: 60,
                            width: size.width * 0.3,
                            child: Icon(
                              Icons.notifications,
                              color: Color.fromRGBO(182, 164, 180, 1),
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            color: MyColors.darkprimarycolor,
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(
                              'Push Notification',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 60,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          // stops: [
                          //   0.1,0.4,0.6,0.9
                          // ],
                          colors: [
                            MyColors.primarycolors,
                            MyColors.darkprimarycolor,
                            MyColors.primarycolors,
                            MyColors.darkprimarycolor,
                          ]),
                      // color: MyColors.darkprimarycolor,
                      //color: Color.fromRGBO(158, 138, 191, 1),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          //color: Color.fromRGBO(0, 0, 0, 0.5),
                          spreadRadius: 0.8,
                          blurRadius: 5,
                          //offset: Offset(0, 2)
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(),
                        height: 60,
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(
                          'Photos',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.9,
                  padding: EdgeInsets.only(bottom: 10),
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.primarycolors,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          spreadRadius: 0.5,
                          blurRadius: 20)
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: size.height * 0.20,
                        width: size.width * 0.8,
                        //padding: EdgeInsets.only(right: 90),
                        alignment: Alignment(0.0, 0.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: MyColors.darkprimarycolor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              alignment: Alignment(-0.8, 0.0),
                              child: Text(
                                "Title",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1))),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.04),
                              height: size.height * 0.05,
                              width: size.width * 0.7,
                              alignment: Alignment(-0.8, 0.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Type here ..",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.white)),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1))),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: size.height * 0.20,
                        width: size.width * 0.8,
                        //padding: EdgeInsets.only(right: 90),
                        alignment: Alignment(0.0, 0.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: MyColors.darkprimarycolor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              alignment: Alignment(-0.8, 0.0),
                              child: Text(
                                "Enter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1))),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.04),
                              height: size.height * 0.08,
                              width: size.width * 0.7,
                              alignment: Alignment(-0.8, 0.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Type here ..",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.white)),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 60,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            MyColors.primarycolors,
                            MyColors.darkprimarycolor,
                            MyColors.primarycolors,
                            MyColors.darkprimarycolor,
                          ]),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.8,
                          blurRadius: 5,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(),
                        height: 20,
                        //width: size.width * 0.59,
                        // padding: EdgeInsets.only(right: 80),
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(
                          'Send',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(index: 4,),
    );
  }
}
