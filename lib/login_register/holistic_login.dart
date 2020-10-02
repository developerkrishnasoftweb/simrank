import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simrank/login_register/holistic_register.dart';
class HolisticLogin extends StatefulWidget{
  @override
  _HolisticLogin createState() => _HolisticLogin();
}
class _HolisticLogin extends State<HolisticLogin>{
  @override
  Color borderColor = Colors.black26;
  String email;
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
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black54),
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
            height: size.height,
            width: size.width,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 50,
                  child: Container(
                    width: size.width,
                    padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          width: size.width,
                          child: Text("Get Started",
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
                          child: Text("Enter your phone number to start earning your rewards ...",
                            style: TextStyle(
                                color: Colors.black54,
                                height: 1.5,
                                fontSize: 16
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 20),
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter phone number",
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    margin: EdgeInsets.only(top: 20,),
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
                                if(email.length > 0){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HolisticRegister()));
                                }
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}