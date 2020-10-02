import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HolisticRegister extends StatefulWidget{
  @override
  _HolisticRegister createState() => _HolisticRegister();
}
class _HolisticRegister extends State<HolisticRegister>{
  @override
  Color borderColor = Colors.black26;
  String name, email, password;
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 10, right: 15),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(255, 129, 60, 0.5)),
                    strokeWidth: 4,
                  ),
                ),
                Container(
                  child: Text("Please wait .."),
                )
              ],
            ),
            scrollable: false,
          );
        },
      );
    }
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05,),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.width,
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 20,
                      onPressed: () => Navigator.pop(context),
                      splashRadius: 25,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: size.width,
                    child: Text("Enter More Details",
                      style: TextStyle(
                          color: Colors.black54.withOpacity(0.6),
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: size.width,
                    child: Text("Enter the world of rewards complete your registration ...",
                      style: TextStyle(
                          color: Colors.black54,
                          height: 1.5,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: size.width,
                    child: Container(
                      height: 50,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            setState(() {
                              borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                            });
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                            (value.length > 0) ? borderColor = Colors.black26 : borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                          });
                        },
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          contentPadding: EdgeInsets.only(left: 8),
                          focusedErrorBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black26
                          ),
                        ),
                        cursorColor: Color.fromRGBO(255, 129, 60, 0.7),
                        cursorRadius: Radius.circular(5),
                        onSaved: (value) => name = value,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width,
                    child: Container(
                      height: 50,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            setState(() {
                              borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                            });
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                            (value.length > 0) ? borderColor = Colors.black26 : borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                          });
                        },
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Email address",
                          contentPadding: EdgeInsets.only(left: 8),
                          focusedErrorBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black26
                          ),
                        ),
                        cursorColor: Color.fromRGBO(255, 129, 60, 0.7),
                        cursorRadius: Radius.circular(5),
                        onSaved: (value) => email = value,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width,
                    child: Container(
                      height: 50,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            setState(() {
                              borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                            });
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                            (value.length > 0) ? borderColor = Colors.black26 : borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                          });
                        },
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Password",
                          contentPadding: EdgeInsets.only(left: 8),
                          focusedErrorBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black26
                          ),
                        ),
                        cursorColor: Color.fromRGBO(255, 129, 60, 0.7),
                        cursorRadius: Radius.circular(5),
                        onSaved: (value) => password = value,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width,
                    child: Container(
                      height: 50,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            setState(() {
                              borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                            });
                            return null;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                            (value.length > 0) ? borderColor = Colors.black26 : borderColor = Color.fromRGBO(255, 129, 60, 0.7);
                          });
                        },
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          contentPadding: EdgeInsets.only(left: 8),
                          focusedErrorBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black26
                          ),
                        ),
                        cursorColor: Color.fromRGBO(255, 129, 60, 0.7),
                        cursorRadius: Radius.circular(5),
                        onSaved: (value){},
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Color.fromRGBO(255, 129, 60, 1))
                            ),
                            color: Color.fromRGBO(255, 129, 60, 0.9),
                            onPressed: (){
                              if(_formKey.currentState.validate()){
                                _formKey.currentState.save();
                                _showMyDialog();
                              }
                            },
                            splashColor: Color.fromRGBO(255, 129, 60, 0.7),
                            child: Text("NEXT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
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
      ),
    );
  }
}