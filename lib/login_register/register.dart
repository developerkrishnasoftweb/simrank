import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simrank/constant/strings.dart';
import 'package:simrank/login_register/otp.dart';

class Register extends StatefulWidget{
  @override
  _Register createState() => _Register();
}
class _Register extends State<Register>{
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
                      padding: EdgeInsets.only(bottom: 20, left: size.width * 0.05, right: size.width * 0.05),
                      width: size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
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
                                            child: Text("Signup",
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
                                keyboardType: TextInputType.number,
                                onChanged: (value){
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
                                keyboardType: TextInputType.number,
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
                                keyboardType: TextInputType.number,
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
                                keyboardType: TextInputType.number,
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
                                    // Navigator.pop(context);
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));
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
    );
  }
}