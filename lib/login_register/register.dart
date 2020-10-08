import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constant/strings.dart';
import 'package:simrank/login_register/otp.dart';

import '../constant/strings.dart';
import '../constant/strings.dart';
import '../constant/strings.dart';
import '../constant/strings.dart';

class Register extends StatefulWidget{
  @override
  _Register createState() => _Register();
}
class _Register extends State<Register>{
  @override
  String name = "", mobile_number = "", email_id = "", password = "", verify_password = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height - MediaQuery.of(context).padding.top,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1467632499275-7a693a761056?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      child: Container(
                        height: 70,
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                    ),
                    Positioned(
                      top: 90,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
                        width: size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(158, 138, 191, 1),
                                              borderRadius: BorderRadius.circular(60),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(1, 1)
                                                ),
                                                BoxShadow(
                                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(-1, -1)
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
                                              child: Text(string.loginText,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white
                                                ),
                                              ),
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
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
                                              child: Text(string.signUpText,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white
                                                ),
                                              ),
                                              onPressed: (){},
                                            ),
                                          )
                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                height: 55,
                                margin: EdgeInsets.only(top: 50),
                                width: size.width * 0.9,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 25, right: 20),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    borderRadius: BorderRadius.circular(60)
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Name",
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
                                  keyboardType: TextInputType.text,
                                  validator: (value){
                                    if(value == ""){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidateName),));
                                    }
                                    return null;
                                  },
                                  onChanged: (value){
                                    setState(() {
                                      name = value;
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
                                    hintText: "Mobile Number",
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
                                  validator: (value){
                                    if(value == ""){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidateMobile),));
                                    }
                                    return null;
                                  },
                                  onChanged: (value){
                                    setState(() {
                                      mobile_number = value;
                                    });
                                  },
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
                                    hintText: "Verification Code",
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
                                  obscureText: true,
                                  validator: (value){
                                    if(value == ""){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please enter verification code"),));
                                    }
                                    return null;
                                  },
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
                                    hintText: "Email Id",
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
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value){
                                    bool validEmail = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                                    if(!validEmail){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validateEmailId),));
                                    }
                                    if(value == ""){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidateEmailId),));
                                    }
                                    return null;
                                  },
                                  onChanged: (value){
                                    setState(() {
                                      name = value;
                                    });
                                  },
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
                                    hintText: "Setup Password",
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
                                  obscureText: true,
                                  validator: (value){
                                    if(value == ""){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidatePassword),));
                                    }
                                    return null;
                                  },
                                  onChanged: (value){
                                    setState(() {
                                      password = value;
                                    });
                                  },
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
                                    hintText: "Re - Enter Password",
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
                                  obscureText: true,
                                  validator: (value){
                                    if(value != password){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePasswordAndVerifyPassword),));
                                    }
                                    if(value == ""){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidatePassword),));
                                    }
                                    return null;
                                  },
                                  onChanged: (value){
                                    setState(() {
                                      verify_password = value;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 30, bottom: 10),
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
                                      if(_formKey.currentState.validate()){

                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}