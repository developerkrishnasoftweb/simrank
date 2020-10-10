import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constant/strings.dart';
import 'package:simrank/login_register/register.dart';
import '../mainScreen/simran_home.dart';
import '../services/services.dart';
class Login extends StatefulWidget{
  @override
  _Login createState() => _Login();
}
class _Login extends State<Login>{
  @override
  void initState(){
    checkStatus();
    super.initState();
  }
  Future checkStatus() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    if(_preferences.get("data") != null){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
  Alignment radioButton = Alignment.centerLeft;
  Color circleIndicator;
  Color circleIndicator1;
  String hintMobileText = "Enter Email ID";
  String hintOtpPassword = "Enter Password";
  bool loginType = false;
  TextEditingController emailPhone = TextEditingController();
  TextEditingController passwordOtp = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String email = "", password = "";
  Color btnColors = Color.fromRGBO(142, 114, 184, 1);
  Color activeBtnColors = Color.fromRGBO(126, 105, 148, 1);
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key:  _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: RadialGradient(
              colors: [
                Color.fromRGBO(141, 114, 183, 0.9),
                Color.fromRGBO(141, 114, 183, 0.9)
              ],
              stops: [
                0.1,
                0.9
              ]
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/login_register_background.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.7), BlendMode.srcATop),
            ),
          ),
          child: Form(
            key: _formKey,
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
                                      color: Colors.white,
                                      letterSpacing: 6
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
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    height: 65,
                                    width: size.width * 0.38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      // gradient: LinearGradient(
                                      //     begin: Alignment.bottomRight,
                                      //     end: Alignment.topLeft,
                                      //     colors: [activebtnColors,Colors.black],
                                      //     // Add one stop for each color
                                      //     // Values should increase from 0.0 to 1.0
                                      //     stops: [0.8, 0.2]
                                      // ),
                                    ),
                                    child:  FlatButton(
                                      color: activeBtnColors,
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
                                      onPressed: (){},
                                    )
                                ),
                                Container(
                                  height: 65,
                                  width: size.width * 0.38,
                                  decoration: BoxDecoration(
                                    color: btnColors,
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 15,
                                        offset: Offset(5, 5)
                                      ),
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 15,
                                        offset: Offset(-5, -5)
                                      )
                                    ]
                                  ),
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
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                                    },
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
                                  height: 65,
                                  width: size.width * 0.35,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    color: activeBtnColors,
                                    borderRadius: BorderRadius.circular(60),

                                  ),
                                  child: Text(
                                    "Email Id",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      if(radioButton == Alignment.centerRight) {
                                        radioButton = Alignment.centerLeft;
                                        hintMobileText = "Enter Email ID";
                                        hintOtpPassword = "Enter Password";
                                        loginType = !loginType;
                                      } else {
                                        radioButton = Alignment.centerRight;
                                        hintMobileText = "Enter Mobile No";
                                        hintOtpPassword = "Enter OTP";
                                        loginType = !loginType;
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
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: 30,
                                        width: size.width * 0.13,
                                        alignment: radioButton,
                                        padding: EdgeInsets.only(left: 3, right: 3),
                                        decoration: BoxDecoration(
                                            color: btnColors,
                                            borderRadius: BorderRadius.circular(60)
                                        ),
                                        child: Container(
                                          height: 23,
                                          width: 23,
                                          decoration: BoxDecoration(
                                            color: btnColors,
                                            borderRadius: BorderRadius.circular(25),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 15,
                                                offset: Offset(5, 5)
                                              ),
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.5),
                                                spreadRadius: 1,
                                                blurRadius: 15,
                                                offset: Offset(-5, -5)
                                              )
                                            ]
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 65,
                                  width: size.width * 0.35,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: btnColors,
                                      borderRadius: BorderRadius.circular(60)
                                  ),
                                  child: Text(
                                    "Mobile No.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                        Container(
                          height: 65,
                          margin: EdgeInsets.only(top: 20),
                          width: size.width * 0.9,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 25, right: 20),
                          decoration: BoxDecoration(
                              color: activeBtnColors,
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            validator: (value){
                              if(value == ""){
                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validateEmail),));
                              }
                              return null;
                            },
                            controller: emailPhone,
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              border: InputBorder.none,
                            ),
                            cursorColor: Colors.white,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            // keyboardType: TextInputType.number,
                            onChanged: (value){
                              setState(() {
                                email = value;
                                (value.length > 0) ? circleIndicator = Color.fromRGBO(0, 255, 0, 1) : circleIndicator = Colors.black;
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
                              color: activeBtnColors,
                              borderRadius: BorderRadius.circular(60)
                          ),
                          child: TextFormField(
                            validator: (value){
                              if(value == ""){
                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePassword),));
                              }
                              return null;
                            },
                            controller: passwordOtp,
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
                                        color: circleIndicator1,
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                            cursorColor: Colors.white,
                            cursorWidth: 2,
                            cursorRadius: Radius.circular(5),
                            obscureText: true,
                            onChanged: (value){
                              setState(() {
                                password = value;
                                (value.length > 0) ? circleIndicator1 = Color.fromRGBO(0, 255, 0, 1) : circleIndicator1 = Colors.black;
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: btnColors,
                            borderRadius: BorderRadius.circular(60),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(5, 5)
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(-5, -5)
                              )
                            ]
                          ),
                          child: SizedBox(
                            height: 65,
                            width: size.width * 0.9,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60.0),
                                  side: BorderSide(color: Color.fromRGBO(126, 105, 148, 1))
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
                                  if(email != "" && password != ""){
                                    if(loginType){
                                      if(email.length == 10){
                                        try{
                                          if(int.parse(email).runtimeType == int){
                                            if(password.length > 7 && password.length < 15){
                                              signIn(email, password, context);
                                            } else {
                                              _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePasswordDigit),));
                                            }
                                          }
                                        } catch (e){
                                          _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePhoneNumber),));
                                        }
                                      } else{
                                        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePhoneNumberDigit),));
                                      }
                                    } else {
                                      bool validEmail = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
                                      if(validEmail){
                                        if(password.length > 7 && password.length < 15){
                                          signIn(email, password, context);
                                        } else {
                                          _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validatePasswordDigit),));
                                        }
                                      } else {
                                        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(string.validateEmailId),));
                                      }
                                    }
                                  }
                                }
                                // Navigator.pop(context);
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
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
    );
  }
  void signIn(username, password, context) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    if(_preferences.get("data") == null){
      FormData formData = new FormData.fromMap({
        "email" : username,
        "password" : password
      });
      Services.userSignIn(formData, context, _scaffoldKey).then((value) async {
        if(value.response){
          storeLoginData(value.data);
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }
      });
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
  Future<bool> storeLoginData(List data) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    List<String> userData = [
      data[0]["id"].toString(),
      data[0]["first_name"].toString(),
      data[0]["model_name"].toString(),
      data[0]["email"].toString(),
      data[0]["email_verified_at"].toString(),
      data[0]["mobile"].toString(),
      data[0]["image"].toString(),
      data[0]["activation_code"].toString(),
      data[0]["device_token"].toString(),
      data[0]["status"].toString(),
      data[0]["created_at"].toString(),
      data[0]["updated_at"].toString(),
      data[0]["deleted_at"].toString(),
      data[0]["user_type"].toString(),
      data[0]["access_token"].toString(),
    ];
    _preferences.clear();
    return _preferences.setStringList("data", userData);
  }
}