import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import '../services/data.dart';
import 'carousel.dart';
import 'appbar_bottombar.dart';
import '../services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
List statusItem = [
  {"image" : "https://images.unsplash.com/photo-1515463892140-58a22e37ff72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSQ_u-gnmeOdsfZMOpBTzqqcnBZwo8dWu38-Q&usqp=CAU"},
  {"image" : "https://images.unsplash.com/photo-1516029637308-3adce832dbec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkZD-VsytAMF7-0NASGAtycgVAt5g-6ln4gQ&usqp=CAU"},
  {"image" : "https://images.unsplash.com/photo-1586299485759-f62264d6b63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5Ei5MpqMeBdzn6kCVjz2xJM8VtEaVw2FOqw&usqp=CAU"},
];
List latestContent = [
  {"image" : "https://images.unsplash.com/photo-1515463892140-58a22e37ff72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "first_name" : "SONALI X"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSQ_u-gnmeOdsfZMOpBTzqqcnBZwo8dWu38-Q&usqp=CAU", "first_name" : "SHILPA Y"},
  {"image" : "https://images.unsplash.com/photo-1516029637308-3adce832dbec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "first_name" : "SONALI X"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkZD-VsytAMF7-0NASGAtycgVAt5g-6ln4gQ&usqp=CAU", "first_name" : "JESSICA B"},
  {"image" : "https://images.unsplash.com/photo-1586299485759-f62264d6b63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "first_name" : "SONALI X"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5Ei5MpqMeBdzn6kCVjz2xJM8VtEaVw2FOqw&usqp=CAU", "first_name" : "SHIPLA C"},
];
List topPhotos = [
  {"image" : "https://images.unsplash.com/photo-1515463892140-58a22e37ff72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "locked" : false},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSQ_u-gnmeOdsfZMOpBTzqqcnBZwo8dWu38-Q&usqp=CAU", "locked" : false},
  {"image" : "https://images.unsplash.com/photo-1516029637308-3adce832dbec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "locked" : true},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkZD-VsytAMF7-0NASGAtycgVAt5g-6ln4gQ&usqp=CAU", "locked" : true},
  {"image" : "https://images.unsplash.com/photo-1586299485759-f62264d6b63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "locked" : false},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5Ei5MpqMeBdzn6kCVjz2xJM8VtEaVw2FOqw&usqp=CAU", "locked" : true},
];
List topVideos = [
  {"image" : "https://images.unsplash.com/photo-1515463892140-58a22e37ff72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSQ_u-gnmeOdsfZMOpBTzqqcnBZwo8dWu38-Q&usqp=CAU"},
  {"image" : "https://images.unsplash.com/photo-1516029637308-3adce832dbec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkZD-VsytAMF7-0NASGAtycgVAt5g-6ln4gQ&usqp=CAU"},
  {"image" : "https://images.unsplash.com/photo-1586299485759-f62264d6b63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
  {"image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5Ei5MpqMeBdzn6kCVjz2xJM8VtEaVw2FOqw&usqp=CAU"},
];

class _HomeState extends State<Home> {
  @override
  void initState(){
    getData();
    super.initState();
  }
  Future<Data> getData() async{
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    String accessToken = _preferences.getStringList("data")[14];
    await Services.getModels(context, accessToken).then((value) async{
      setState(() {
        latestContent = value.data;
        topVideos = value.data;
        print(value.data);
      });
    });
  }
  double statusHeight = 51.5;
  double statusWidth = 51.5;
  double statusBarHeight = 65;
  double statusBarWidth = 65;
  double circular = 5.0;
  Alignment align = Alignment(0.0, 0.9);
  Widget locked(){
    return Column(
      children: <Widget>[
        Container(
          width: 155,
          height: 20,
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.centerLeft,
          child: Container(
            width: 130,
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.pinkAccent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.5,
                      0.9
                    ]
                ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:  Radius.circular(10))
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.lock, size: 15, color: Colors.white,),
                Text(" Locked Images",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Icon(Icons.lock, size: 50, color: Colors.white,)
      ],
    );
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: drawer(context),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(158, 138, 191, 1),
          leading: lead(context),
          actions: [action(context)],
          title: titlename(context),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          color: Color.fromRGBO(158, 138, 191, 0.6),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: statusBarHeight,
                  width: size.width,
                  child: ListView.builder(
                    itemExtent: statusBarWidth,
                    scrollDirection: Axis.horizontal,
                    itemCount: statusItem.length,
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(158, 138, 191, 1),
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurple[800],
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.1,
                                  0.5,
                                  0.9
                                ]
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.9),
                                blurRadius: 6,
                                spreadRadius: 0.1
                              )
                            ]
                            // border: Border.all(color: Colors.orange)
                          ),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            height: statusHeight,
                            width: statusWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(49),
                                image: DecorationImage(
                                    image: NetworkImage(statusItem[index]["image"],),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.black.withOpacity(0.2),
                  child: Carousel(
                    images: [
                      // {"imageUrl": AssetImage("assets/images/holistic_latest_article_1.png"), "head": "The Fatty Bao", "body": "foodude has been here", "bodyColor": Colors.white, "headColor": Colors.white, "recommend": true},
                      {"imageUrl" : AssetImage("assets/images/home_model_image_1.jpg"), "head": "", "body": "", "recommend": false},
                      {"imageUrl" : AssetImage("assets/images/home_model_image_2.jpg"), "head": "", "body": "", "recommend": false},
                      {"imageUrl" : AssetImage("assets/images/home_model_image_3.jpg"), "head": "", "body": "", "recommend": false},
                    ],
                    height: 200.0,
                    curve: Curves.easeInOutSine,
                    margin: EdgeInsets.all(10.0),
                  ),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Latest Content",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      InkWell(
                        child: Text("View All",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            // (circular == 5.0) ? circular = 100.0 : circular = 5.0;
                            // (align.y == 0.9) ? align = Alignment(0.0, 0.0) : align = Alignment(0.0, 0.9);
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  height: 150.0,
                  width: size.width,
                  color: Colors.black.withOpacity(0.1),
                  child: ListView.builder(
                    itemExtent: 150.0,
                    scrollDirection: Axis.horizontal,
                    itemCount: latestContent.length,
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5.0),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            height: 125.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(circular),
                              image: DecorationImage(
                                image: NetworkImage(latestContent[index]["image"],),
                                fit: BoxFit.fill
                              )
                            ),
                            alignment: align,
                            child: Text(latestContent[index]["first_name"],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Top Photos",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      InkWell(
                        child: Text("View All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                        onTap: (){
                          setState(() {
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  height: 160.0,
                  width: size.width,
                  color: Colors.black.withOpacity(0.1),
                  child: ListView.builder(
                    itemExtent: 160.0,
                    scrollDirection: Axis.horizontal,
                    itemCount: topPhotos.length,
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5.0),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            height: 150.0,
                            width: 155.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(topPhotos[index]["image"],),
                                  fit: BoxFit.fill,
                                  colorFilter: (topPhotos[index]["locked"]) ? ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken) : null
                                )
                            ),
                            child: (topPhotos[index]["locked"]) ? locked() : Container(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Top Videos",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      InkWell(
                        child: Text("View All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                        onTap: (){
                          setState(() {
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180.0,
                  width: size.width,
                  color: Colors.black.withOpacity(0.1),
                  child: ListView.builder(
                    itemExtent: 180.0,
                    scrollDirection: Axis.horizontal,
                    itemCount: topVideos.length,
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5.0),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            height: 175.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(topVideos[index]["image"],),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(index: 0,),
      ),
    );
  }
}
