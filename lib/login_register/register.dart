import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constant/strings.dart';
import '../services/services.dart';
import '../login_register/login.dart';
import '../static/innerShadow.dart';
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
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/login_register_background.jpg"),
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
                  alignment: Alignment.center,
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
                              color: Colors.white,
                              letterSpacing: 4
                          ),
                        ),
                      ),
                      Container(
                        child: Text(string.appSubtitle,
                          style: TextStyle(
                              fontFamily: string.fontFamilyText,
                              fontSize: 17,
                              color: Colors.white,
                              letterSpacing: 2.5
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 150,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.only(bottom: 5),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05, bottom: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(126, 105, 148, 1),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                    child: SizedBox(
                                      height: 65,
                                      width: size.width * 0.4,
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(60.0)
                                        ),
                                        child: Text(string.loginText,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                      ),
                                    )
                                ),
                                InnerShadow(
                                  blur: 100,
                                  color: const Color.fromRGBO(0, 0, 0, 0.5),
                                  offset: const Offset(-2, 1),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(137, 123, 153, 01),
                                          borderRadius: BorderRadius.circular(60)
                                      ),
                                      child: SizedBox(
                                        height: 65,
                                        width: size.width * 0.4,
                                        child: FlatButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(60.0)
                                          ),
                                          child: Text(string.signUpText,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          onPressed: (){},
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            )
                        ),
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(top: 30),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(137, 123, 153, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
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
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(top: 14),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(137, 123, 153, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Mobile Number",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                            cursorColor: Colors.black87,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            keyboardType: TextInputType.number,
                            validator: (value){
                              if(value != ""){
                                try{
                                  if(value.length == 10){
                                    if(value.contains(" ")){
                                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Mobile number can not have white space."),));
                                    } else {
                                      if(int.parse(value).runtimeType == int) {
                                        setState(() {
                                          mobile_number = value;
                                        });
                                      }
                                    }
                                  } else {
                                    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePhoneNumberDigit),));
                                  }
                                } catch (e){
                                  _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePhoneNumber),));
                                  // _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePasswordDigit),));
                                }
                              } else {
                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidateMobile),));
                              }
                              return null;
                            },
                            onChanged: (value){
                              mobile_number = value;
                            },
                          ),
                        ),
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(top: 14),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(137, 123, 153, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Verification Code",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                            cursorColor: Colors.black87,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            validator: (value){
                              if(value != ""){
                                return null;
                              } else {
                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please enter verification code"),));
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(top: 14),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(137, 123, 153, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Email Id",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                            cursorColor: Colors.black87,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value){
                              if(value != ""){
                                bool validEmail = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                                if(validEmail){
                                  setState(() {
                                    email_id = value;
                                  });
                                } else {
                                  _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validateEmailId),));
                                }
                              } else {
                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.signUpValidateEmailId),));
                              }
                              return null;
                            },
                            onChanged: (value){
                              email_id = value;
                            },
                          ),
                        ),
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(top: 14),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(137, 123, 153, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Setup Password",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                            cursorColor: Colors.black87,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            obscureText: true,
                            validator: (value){
                              if(value != ""){
                                setState(() {
                                  password = value;
                                });
                              } else {
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
                          height: 65,
                          margin: EdgeInsets.only(top: 14),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(137, 123, 153, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Re - Enter Password",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                            cursorColor: Colors.black87,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            obscureText: true,
                            validator: (value){
                              if(value != ""){
                                if(verify_password == password){
                                  setState(() {
                                    verify_password = value;
                                  });
                                } else {
                                  _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePasswordAndVerifyPassword),));
                                }
                              } else {
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
                          margin: EdgeInsets.only(top: 30,),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(126, 105, 148, 1),
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: SizedBox(
                            height: 65,
                            width: size.width * 0.9,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60.0)
                              ),
                              child: Text("Proceed",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              onPressed: (){
                                if(_formKey.currentState.validate()){
                                  if(name != "" && mobile_number != "" && email_id != "" && password == verify_password){
                                    try{
                                      bool validMobile = new RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(mobile_number);
                                      if(validMobile){
                                        if(int.parse(mobile_number).runtimeType == int) {
                                          bool validEmail = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email_id);
                                          if(validEmail){
                                            signUp(name, mobile_number, email_id, password, context);
                                          }
                                        }
                                      }
                                    } catch (e){
                                      return;
                                    }
                                  } else {
                                    print("Something wrong !!!");
                                  }
                                }
                              },
                            ),
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
      ),
    );
  }

  void signUp(String name, String mobile_number, String email_id, String password, BuildContext context) {
    FormData formData = new FormData.fromMap({
      "first_name" : name,
      "model_name" : name,
      "email" : email_id,
      "mobile" : mobile_number,
      "password" : password,
      "user_type" : "User"
    });
    Services.userSignUp(formData, context, _scaffoldKey).then((value) async {
      if(value.response){
        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Registered Successfully !!!"),));
        Future.delayed(Duration(milliseconds: 1000), (){
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
        });
      }
    });
  }
}