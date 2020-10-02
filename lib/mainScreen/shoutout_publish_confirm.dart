import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simrank/constant/strings.dart';
import 'package:simrank/mainScreen/shoutout_publish.dart';
import 'appbar_bottombar.dart';
class ShoutOutPublishConfirm extends StatefulWidget{
  @override
  _ShoutOutPublishConfirm createState() => _ShoutOutPublishConfirm();
}
class _ShoutOutPublishConfirm extends State<ShoutOutPublishConfirm>{
  @override
  bool platformIos = true;
  bool platformAndroid = true;
  bool platformWeb = false;
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
                            child: Text("CONTENT DETAILS : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: size.width,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: size.width,
                                        alignment: Alignment(-0.8, 0.0),
                                        child: Text("Publish on platforms"),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: size.width,
                                        child: CheckboxListTile(
                                          title: Text("IOS"),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          value: platformIos,
                                          onChanged: (value){
                                            setState(() => platformIos = !platformIos);
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: size.width,
                                        child: CheckboxListTile(
                                          title: Text("ANDROID"),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          value: platformAndroid,
                                          onChanged: (value){
                                            setState(() {
                                              platformAndroid = !platformAndroid;
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: size.width,
                                        child: CheckboxListTile(
                                          title: Text("WEB"),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          value: platformWeb,
                                          onChanged: (value){
                                            setState(() {
                                              platformWeb = !platformWeb;
                                            });
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(bottom: 10, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                  width: size.width * 0.3,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide.none),
                                    child: Text("Prev",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                      ),
                                    ),
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                SizedBox(
                                  height: 30,
                                  width: size.width * 0.3,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide.none),
                                    child: Text("Next",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                      ),
                                    ),
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    onPressed: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutPublish()));
                                    },
                                  ),
                                )
                              ],
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