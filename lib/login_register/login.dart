import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simrank/constant/strings.dart';
import 'package:simrank/login_register/otp.dart';
import 'package:simrank/login_register/register.dart';
import 'package:simrank/mainScreen/simran_home.dart';
class Login extends StatefulWidget{
  @override
  _Login createState() => _Login();
}
Alignment radioButton = Alignment.centerRight;
Color circleIndicator;
String hintMobileText = "Enter Mobile No";
String hintOtpPassword = "Enter OTP";
class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height * 0.9607,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage("https://images.pexels.com/photos/1021693/pexels-photo-1021693.jpeg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20, left: size.width * 0.05, right: size.width * 0.05),
                      width: size.width,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(string.appTitle,
                                    style: TextStyle(
                                      fontFamily: string.fontFamilyFont,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(string.appSubtitle,
                                    style: TextStyle(
                                      fontFamily: string.fontFamilyText,
                                      fontSize: 17,
                                      color: Colors.white
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(158, 138, 191, 1),
                                      borderRadius: BorderRadius.circular(60),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.7),
                                          spreadRadius: 0.1,
                                          blurRadius: 10
                                        )
                                      ]
                                    ),
                                    child: SizedBox(
                                      height: 55,
                                      width: size.width * 0.4,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(60.0),
                                          side: BorderSide(color: Color.fromRGBO(158, 138, 191, 1))
                                        ),
                                        child: Text("Login",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white
                                          ),
                                        ),
                                        onPressed: (){},
                                      ),
                                    )
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(158, 138, 191, 1),
                                        borderRadius: BorderRadius.circular(60)
                                      ),
                                      child: SizedBox(
                                        height: 55,
                                        width: size.width * 0.4,
                                        child: FlatButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(60.0),
                                            side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5))
                                          ),
                                          child: Text("Sign Up",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white
                                            ),
                                          ),
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                                          },
                                        ),
                                      )
                                  ),
                                ],
                              )
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 55,
                                  width: size.width * 0.35,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    borderRadius: BorderRadius.circular(60)
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "Email Id",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    cursorColor: Colors.black87,
                                    cursorWidth: 2,
                                    cursorRadius: Radius.circular(5),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      if(radioButton == Alignment.centerRight) {
                                        radioButton = Alignment.centerLeft;
                                        hintMobileText = "Enter Email ID";
                                        hintOtpPassword = "Enter Password";
                                      } else {
                                        radioButton = Alignment.centerRight;
                                        hintMobileText = "Enter Mobile No";
                                        hintOtpPassword = "Enter OTP";
                                      }
                                    });
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(bottom: 2),
                                        child: Text("VIA",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: size.width * 0.13,
                                        alignment: radioButton,
                                        padding: EdgeInsets.only(left: 3, right: 3),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(158, 138, 191, 1),
                                            borderRadius: BorderRadius.circular(60)
                                        ),
                                        child: Icon(Icons.radio_button_checked, size: 20, color: Color.fromRGBO(0, 0, 0, 0.3),),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  width: size.width * 0.35,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(158, 138, 191, 1),
                                      borderRadius: BorderRadius.circular(60)
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "Mobile No.",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17
                                      ),
                                      border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            )
                          ),
                          Container(
                            height: 55,
                            margin: EdgeInsets.only(top: 20),
                            width: size.width * 0.9,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 25, right: 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: hintMobileText,
                                suffixIcon: Container(
                                    width: 2,
                                    height: 2,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Container(
                                      height: 6,
                                      width: 6,
                                      decoration: BoxDecoration(
                                          color: circleIndicator,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                                spreadRadius: 0.5,
                                                blurRadius: 0.5
                                            )
                                          ]
                                      ),
                                    )
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17
                                ),
                                border: InputBorder.none,
                              ),
                              cursorColor: Colors.black87,
                              cursorWidth: 2,
                              cursorRadius: Radius.circular(5),
                              keyboardType: TextInputType.number,
                              onChanged: (value){
                                setState(() {
                                  (value.length > 0) ? circleIndicator = Color.fromRGBO(0, 255, 0, 1) : circleIndicator = Colors.black;
                                });
                              },
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            margin: EdgeInsets.only(top: 14),
                            width: size.width * 0.9,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 25, right: 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: hintOtpPassword,
                                suffixIcon: Container(
                                  width: 2,
                                  height: 2,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Container(
                                    height: 6,
                                    width: 6,
                                    decoration: BoxDecoration(
                                      color: circleIndicator,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 0.5
                                        )
                                      ]
                                    ),
                                  )
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17
                                ),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                              cursorColor: Colors.black87,
                              cursorWidth: 2,
                              cursorRadius: Radius.circular(5),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: SizedBox(
                              height: 55,
                              width: size.width * 0.9,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0),
                                    side: BorderSide(color: Color.fromRGBO(158, 138, 191, 1))
                                ),
                                child: Text("Proceed",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}