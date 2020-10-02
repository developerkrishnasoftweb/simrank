import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simrank/constant/strings.dart';
import 'appbar_bottombar.dart';
class ShoutOut extends StatefulWidget {
  @override
  _ShoutOut createState() => _ShoutOut();
}
double slider = 10.0;
var completeShoutOutCount = 15;
var rejectedShoutOutCount = 20;
var pendingShoutOutCount = 10;
String shoutOut = string.completedShoutOut + completeShoutOutCount.toString();
PageController _pageController = PageController();
Alignment radioButton = Alignment.centerRight;
SliverGridDelegate grid;
class _ShoutOut extends State<ShoutOut>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(158, 138, 191, 1),
          leading: lead(context),
          actions: [action(context)],
          title: titlename(context),
        ),
        body: Container(
          color: Color.fromRGBO(158, 138, 191, 0.8),
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white, width: 2), top: BorderSide(color: Colors.white, width: 2))
                  ),
                  child: Text(string.shoutOutTitle,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        width: size.width * 0.3,
                        height: 60,
                        child: RaisedButton(
                          padding:  EdgeInsets.only(top: 7),
                          color: Color.fromRGBO(158, 138, 191, 1),
                          onPressed: (){
                            setState(() {
                              slider = 10.0;
                              _pageController.jumpToPage(0);
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.check, color: Colors.white),
                              Text(string.shoutOutCompleteBtn,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        height: 60,
                        child: RaisedButton(
                          padding:  EdgeInsets.only(top: 7),
                          color: Color.fromRGBO(158, 138, 191, 1),
                          onPressed: (){
                            setState(() {
                              slider = 50.0;
                              _pageController.jumpToPage(1);
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.watch_later, color: Colors.white),
                              Text(string.shoutOutPendingBtn,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        height: 60,
                        child: RaisedButton(
                          padding:  EdgeInsets.only(top: 7),
                          color: Color.fromRGBO(158, 138, 191, 1),
                          onPressed: (){
                            setState(() {
                              slider = 90.0;
                              _pageController.jumpToPage(2);
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.close, color: Colors.white),
                              Text(string.shoutOutRejectBtn,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white, width: 2)),
                  ),
                  child: Slider(
                    value: slider,
                    max: 100,
                    min: 0,
                    onChanged: (value){},
                    activeColor: Color.fromRGBO(158, 138, 191, 1),
                    inactiveColor: Colors.white,
                  ),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  alignment: Alignment.center,
                  child: Text(shoutOut,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.52,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (page){
                      setState(() {
                        if(page == 0) {
                          slider = 10.0;
                          shoutOut = string.completedShoutOut + completeShoutOutCount.toString();
                        }
                        if(page == 1) {
                          slider = 50.0;
                          shoutOut = string.pendingShoutOut + pendingShoutOutCount.toString();
                        }
                        if(page == 2){
                          slider = 90.0;
                          shoutOut = string.rejectedShoutOut + rejectedShoutOutCount.toString();
                        }
                      });
                    },
                    children: <Widget>[
                      Container(
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(11, (index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/download.jpg"),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.4), BlendMode.darken),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.videocam,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text("Requested To",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text("Model Name",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text("on 20-Jan-2020",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(11, (index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/download.jpg"),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.4), BlendMode.darken),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("Model Name",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text("00:23",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Icon(Icons.play_arrow,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text("on 20-Jan-2020",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(11, (index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/download.jpg"),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.4), BlendMode.darken),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.videocam,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text("Rejected",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text("Model Name",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text("on 20-Jan-2020",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(index: 3,),
      ),
    );
  }
}