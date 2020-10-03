import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simrank/constant/strings.dart';
import 'package:simrank/mainScreen/shoutout_publish_confirm.dart';
import 'appbar_bottombar.dart';
class ShoutOutPublish extends StatefulWidget{
  @override
  _ShoutOutPublish createState() => _ShoutOutPublish();
}
class _ShoutOutPublish extends State<ShoutOutPublish>{
  @override
  Color backGroundColor = Colors.orange[700];
  Alignment align = Alignment.centerRight;
  double radioInnerCircleHeight = 10;
  double radioInnerCircleWidth = 10;
  String uploadDropDown = "PHOTOS";
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(158, 138, 191, 1),
          leading: lead(context),
          actions: [action(context)],
          title: titlename(context),
        ),
        body: Container(
          color: Color.fromRGBO(158, 138, 191, 0.8),
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.white))
                  ),
                  child: Text(string.shoutOutTitle,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Upload",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Monetize",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("4",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Publish",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    width: size.width,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.white, ),)
                    ),
                    child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text("Preview",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  width: size.width,
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 65,
                                        width: size.width,
                                        child: ListTile(
                                          leading: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              borderRadius: BorderRadius.circular(50),
                                              image: DecorationImage(
                                                image: AssetImage("assets/images/download.jpg"),
                                              )
                                            ),
                                          ),
                                          title: Text("Model Name",
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 18,
                                             fontWeight: FontWeight.bold
                                           )
                                          ),
                                          subtitle: Container(
                                            width: size.width,
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              children: [
                                                Text("Video Name (Promo) \n13 Feb 2020 | 01:30 PM",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 250,
                                  padding: EdgeInsets.all(10),
                                  width: size.width,
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/download.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: size.width * 0.7,
                                  alignment: Alignment.center,
                                  child: Text("SELECT FOLDER TO UPLOAD IN : ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: size.width * 0.25,
                                  alignment: Alignment.center,
                                  child: DropdownButtonFormField(
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    isExpanded: true,
                                    value: uploadDropDown,
                                    onChanged: (value){
                                      setState(() {
                                        uploadDropDown = value;
                                      });
                                    },
                                    dropdownColor: Color.fromRGBO(158, 138, 191, 1),
                                    icon: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white, size: 20,),
                                    items: [
                                      DropdownMenuItem(child: Text("PHOTOS"), value: "PHOTOS",),
                                      DropdownMenuItem(child: Text("VIDEOS"), value: "VIDEO",),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: size.width,
                            height: 60,
                            child: ListTile(
                              onTap: (){
                                setState(() {
                                  if(align == Alignment.centerLeft) {
                                    align = Alignment.centerRight;
                                    radioInnerCircleHeight = 18;
                                    radioInnerCircleWidth = 18;
                                  }
                                  else {
                                    align = Alignment.centerLeft;
                                    radioInnerCircleHeight = 13;
                                    radioInnerCircleWidth = 13;
                                  }
                                });
                              },
                              leading: AnimatedContainer(
                                duration: Duration(milliseconds: 250),
                                height: 25,
                                width: 45,
                                alignment: align,
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                                decoration: BoxDecoration(
                                  color: (align == Alignment.centerRight) ? backGroundColor : Colors.black54,
                                  borderRadius: BorderRadius.circular(25)
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  height: radioInnerCircleHeight,
                                  width: radioInnerCircleWidth,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ),
                              title: Text("NOTIFICATION"),
                              isThreeLine: false,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: size.width * 0.25,
                                  alignment: Alignment.center,
                                  child: Text("POSITION LOGO", textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: size.width * 0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: size.width,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(bottom: 10, right: 20, top: 10),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: Colors.white60,)),
                              child: Text("Publish",
                                style: TextStyle(
                                    color: Colors.deepPurple.withBlue(100),
                                    fontSize: 16
                                ),
                              ),
                              color: Colors.orangeAccent,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutPublishConfirm()));
                              },
                            ),
                          )
                        ]
                    )
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(index: 3,),
      ),
    );
  }
}