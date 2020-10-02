import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simrank/constant/strings.dart';
import 'package:simrank/mainScreen/daimond.dart';
import 'package:simrank/mainScreen/overview.dart';
import 'appbar_bottombar.dart';
class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}
Alignment radioButton = Alignment.centerRight;
class _Menu extends State<Menu>{
  @override
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
              child :Container(
                padding: EdgeInsets.only(top: 20, bottom: 20, left: size.width * 0.05, right: size.width * 0.05),
                width: size.width,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(158, 138, 191, 1),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(0, 2)
                          ),
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: size.width * 0.3,
                            alignment: Alignment.center,
                            child: Icon(Icons.filter_frames, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(string.menuListProfile,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => daimond()
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(158, 138, 191, 1),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 5,
                                  offset: Offset(0, 2)
                              ),
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: size.width * 0.3,
                              alignment: Alignment.center,
                              child: Icon(Icons.account_balance_wallet, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                            ),
                            Container(
                              height: 40,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            Container(
                              height: 60,
                              width: size.width * 0.59,
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment(-1.0, 0.0),
                              child: Text(string.menuListWallet,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 138, 191, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(0, 2)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: size.width * 0.3,
                            alignment: Alignment.center,
                            child: Icon(Icons.graphic_eq, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(string.menuListRecharge,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 138, 191, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(0, 2)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: size.width * 0.3,
                            alignment: Alignment.center,
                            child: Icon(Icons.headset_mic, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(string.menuListHelp,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 138, 191, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(0, 2)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: size.width * 0.3,
                            alignment: Alignment.center,
                            child: Icon(Icons.pregnant_woman, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(string.menuListSuperFan,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 138, 191, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(0, 2)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: size.width * 0.3,
                            alignment: Alignment.center,
                            child: Icon(Icons.settings, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(string.menuListSettings,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 138, 191, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(0, 2)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: size.width * 0.3,
                            alignment: Alignment.center,
                            child: Icon(Icons.exit_to_app, color: Color.fromRGBO(182, 164, 180, 1), size: 40,),
                          ),
                          Container(
                            height: 40,
                            width: 2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Container(
                            height: 60,
                            width: size.width * 0.59,
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment(-1.0, 0.0),
                            child: Text(string.menuListLogout,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        spreadRadius: 0.5,
                                        blurRadius: 5,
                                        offset: Offset(0, 2)
                                    ),
                                  ]
                              ),
                              child: SizedBox(
                                height: 60,
                                width: size.width * 0.35,
                                child: FlatButton.icon(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.transparent)),
                                  onPressed: (){},
                                  icon: Icon(Icons.person_outline, color: Colors.white, size: 25,),
                                  label: Text("Artist",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20
                                    ),
                                  )
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  (radioButton == Alignment.centerRight) ? radioButton = Alignment.centerLeft : radioButton = Alignment.centerRight;
                                });
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 25,
                                    width: size.width * 0.13,
                                    alignment: radioButton,
                                    padding: EdgeInsets.only(left: 3, right: 3),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(158, 138, 191, 1),
                                      borderRadius: BorderRadius.circular(60)
                                    ),
                                    child: Container(
                                      child: Icon(Icons.radio_button_checked, size: 20, color: Color.fromRGBO(158, 138, 191, 1),),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                                spreadRadius: 0.5,
                                                blurRadius: 5,
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 5,
                                      offset: Offset(0, 2)
                                  ),
                                ]
                              ),
                              child: SizedBox(
                                height: 60,
                                width: size.width * 0.35,
                                child: FlatButton.icon(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Colors.transparent)),
                                  onPressed: (){},
                                  icon: Icon(Icons.person, color: Colors.white, size: 25,),
                                  label: Text("User",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}