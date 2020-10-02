import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dialog.dart';
import 'appbar_bottombar.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';
import 'dart:ui';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              height: size.height,
              width: size.width,
              alignment: Alignment.center,
              child: DialogBox(),
            ),
          );
        },
      );
    }

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
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      // height: 20,
                      width: size.width * 0.9,
                      child: Text(
                        'Videos',
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
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 3,
                  width: size.width,
                  color: MyColors.whiteColor,
                ),
                Container(
                  height: size.height * 0.8,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: size.width,
                              child: ListTile(
                                onTap: () {},
                                title: Text(
                                  Strings.homefeedmodelname,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.whiteColor,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 10.0,
                                          color: MyColors.blackText,
                                          offset: Offset(3.0, 3.0),
                                        ),
                                      ]),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      Strings.homefeedvideoname,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: MyColors.whiteColor,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 10.0,
                                              color: MyColors.blackText,
                                              offset: Offset(3.0, 3.0),
                                            ),
                                          ]),
                                    ),
                                    Text(
                                      Strings.homefeedpostdateTime,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: MyColors.whiteColor,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 10.0,
                                              color: MyColors.blackText,
                                              offset: Offset(3.0, 3.0),
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                                leading: GestureDetector(
                                  onTap: () {
                                    print('Clicked Profile Pic');
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/kaif.jpg"),
                                          fit: BoxFit.fill,
                                          alignment: Alignment.center),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 30),
                              height: 250,
                              width: size.width * 0.9,
                              child: GestureDetector(
                                onTap: () {
                                  print('Clicked Video');
                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: size.width * 0.9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/kaif.jpg'),
                                              fit: BoxFit.fill),
                                          boxShadow: [
                                            BoxShadow(
                                              color: MyColors.blackText,
                                              blurRadius: 5.0,
                                              // soften the shadow
                                              spreadRadius: 1.0,
                                              //extend the shadow
                                              offset: Offset(
                                                10.0,
                                                // Move to right 10  horizontally
                                                10.0, // Move to bottom 10 Vertically
                                              ),
                                            )
                                          ],
                                          color: MyColors.purple,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            height: 20,
                                            width: size.width,
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: size.width * 0.32,
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        MyColors.pinkvariaance,
                                                        Colors.red
                                                      ]),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  _showMyDialog();
                                                },
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.lock,
                                                      size: 20,
                                                    ),
                                                    Text('Locked Video'),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: GestureDetector(
                                              onTap: () {
                                                print('Unlocked Video');
                                              },
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  RadiantGradientMask(
                                                    child: Icon(
                                                      Icons.play_arrow,
                                                      size: 100,
                                                      color:
                                                          MyColors.whiteColor,
                                                    ),
                                                  ),
                                                  Text(
                                                    Strings.unlockVideoText,
                                                    style: TextStyle(
                                                        color:
                                                            MyColors.whiteColor,
                                                        fontSize: 20),
                                                  ),
                                                ],
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    print('Liked');
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.favorite,
                                            color: MyColors.whiteColor,
                                            size: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('2.1K'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Liked');
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.message,
                                            color: MyColors.whiteColor,
                                            size: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1.5K'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Liked');
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.share,
                                            color: MyColors.whiteColor,
                                            size: 30,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(index: 1,),
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [MyColors.blueColor, MyColors.transparent],
      ).createShader(bounds),
      child: child,
    );
  }
}