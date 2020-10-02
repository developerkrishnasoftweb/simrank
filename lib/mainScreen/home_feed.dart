import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';
import 'appbar_bottombar.dart';

class Home_Feed extends StatefulWidget {
  @override
  _Home_FeedState createState() => _Home_FeedState();
}

class _Home_FeedState extends State<Home_Feed> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child:  Scaffold(
          backgroundColor: MyColors.purple,
          appBar: AppBar(
            backgroundColor: MyColors.purple,
            leading: lead(context),
            actions: [action(context)],
            title: titlename(context),
            bottom: TabBar(tabs: [
              Tab(
                child: Text("HomeFeed"),
              ),
              Tab(
                child: Text("OverView"),
              ),
            ]),
          ),

          body: TabBarView(children: [
            Container(
              height: size.height,
              width: size.width,
              color: MyColors.purple,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            // alignment: Alignment(0.9, -0.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  // backgroundColor: MyColors.transparent,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: MyColors.blackText,
                                          blurRadius: 5.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            10.0, // Move to right 10  horizontally
                                            10.0, // Move to bottom 10 Vertically
                                          ),
                                        )
                                      ],
                                      color: MyColors.purple,
                                      borderRadius: BorderRadius.circular(10)
                                    // backgroundBlendMode: BlendMode.darken,
                                  ),
                                  child: Icon(
                                    Icons.photo,
                                    color: MyColors.whiteColor,
                                    size: 35,
                                  ),
                                  // radius: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            // alignment: Alignment(0.9, -0.5),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  // backgroundColor: MyColors.transparent,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: MyColors.blackText,
                                          blurRadius: 5.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            10.0, // Move to right 10  horizontally
                                            10.0, // Move to bottom 10 Vertically
                                          ),
                                        )
                                      ],
                                      color: MyColors.purple,
                                      borderRadius: BorderRadius.circular(10)
                                    // backgroundBlendMode: BlendMode.darken,
                                  ),
                                  child: Icon(
                                    Icons.view_comfy,
                                    color: MyColors.whiteColor,
                                    size: 35,
                                  ),
                                  // radius: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            // alignment: Alignment(0.9, -0.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  // backgroundColor: MyColors.transparent,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: MyColors.blackText,
                                          blurRadius: 5.0, // soften the shadow
                                          spreadRadius: 1.0, //extend the shadow
                                          offset: Offset(
                                            10.0, // Move to right 10  horizontally
                                            10.0, // Move to bottom 10 Vertically
                                          ),
                                        )
                                      ],
                                      color: MyColors.purple,
                                      borderRadius: BorderRadius.circular(10)
                                    // backgroundBlendMode: BlendMode.darken,
                                  ),
                                  child: Icon(
                                    Icons.equalizer,
                                    color: MyColors.whiteColor,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
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
            Container(
              child: Text("helo"),
            )
          ]),
        bottomNavigationBar: BottomBar(index: 0,),
        ),
    );
  }
}
