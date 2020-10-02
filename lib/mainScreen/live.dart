import 'package:flutter/material.dart';
import 'appbar_bottombar.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';

class Live extends StatefulWidget {
  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: lead(context),
        actions: [action(context)],
        title: titlename(context),
        backgroundColor: MyColors.purple,
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: MyColors.purple,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 3,
                  width: size.width,
                  color: MyColors.whiteColor,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10, left: 50),
                      // height: 20,
                      width: size.width * 0.8,
                      child: Text(
                        Strings.homefeedmodelname,
                        style: TextStyle(
                          color: MyColors.whiteColor,
                          fontSize: 25,
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
                      ),
                    ),
                    Container(
                      height: size.height * 0.4,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: MyColors.grayText),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [MyColors.pinkvariaance, Colors.red]),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.videocam,
                            color: MyColors.whiteColor,
                            size: 40,
                          ),
                          Container(
                            height: 35,
                            width: 2,
                            color: MyColors.whiteColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('START GROUP\n LIVE NOW',style: TextStyle(fontSize: 15,color: MyColors.whiteColor,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [MyColors.pinkvariaance, Colors.red]),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.notifications_active,
                            color: MyColors.whiteColor,
                            size: 40,
                          ),
                          Container(
                            height: 35,
                            width: 2,
                            color: MyColors.whiteColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SEND LIVE\n NOTIFICATION',style: TextStyle(fontSize: 15, color: MyColors.whiteColor,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(index: 2,),
    );
  }
}
