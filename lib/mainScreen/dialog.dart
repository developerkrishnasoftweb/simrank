import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/strings.dart';
import '../constant/colors.dart';

class DialogBox extends StatefulWidget {
  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.85,
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.whiteColor),
        borderRadius: BorderRadius.circular(20),
        color: MyColors.purple,
      ),
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 3,
              width: size.width,
              color: MyColors.whiteColor,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                  width: size.width * 0.9,
                  child: Text(
                    Strings.unlockVideoDialogText,
                    style: TextStyle(
                      color: MyColors.whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: MyColors.blackText,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 3,
                  width: size.width,
                  color: MyColors.whiteColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  width: size.width*0.5,
                  child: Text('Wallet Balance : 10',style: TextStyle(fontSize: 15,color: MyColors.whiteColor,fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/kaif.jpg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  width: size.width*0.5,
                  child: Text('Gems Required : 99',style: TextStyle(fontSize: 15,color: MyColors.whiteColor,fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/kaif.jpg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(158,138,191,1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:[
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            spreadRadius: 0.1,
                            blurRadius: 10
                        )
                      ]
                  ),
                  child: SizedBox(
                    height: 40,
                    width: size.width * 0.6,
                    child: FlatButton(
                      onPressed: () {

                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Text('Required'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:  20, bottom: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(158,138,191,1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:[
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            spreadRadius: 0.1,
                            blurRadius: 10
                        )
                      ]
                  ),
                  child: SizedBox(
                    height: 40,
                    width: size.width * 0.6,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Text('Cancel'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
