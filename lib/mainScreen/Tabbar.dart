import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simrank/mainScreen/ShoutOutMess.dart';
import 'package:simrank/mainScreen/home_feed.dart';
import 'package:simrank/mainScreen/image.dart';
import '../constant/colors.dart';
import 'appbar_bottombar.dart';
import 'popmodelmenu.dart';

class Tablayout extends StatefulWidget {
  @override
  _TablayoutState createState() => _TablayoutState();
}

class _TablayoutState extends State<Tablayout> {
  var index = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColors.primarycolors,
        appBar: AppBar(
          backgroundColor: MyColors.primarycolors,
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
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: size.height * 0.05,
                          width: size.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: MyColors.primarycolors,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Images()));
                            },
                            child: Icon(
                              Icons.perm_contact_calendar,
                              size: 26.0,
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.05,
                          width: size.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: MyColors.primarycolors,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.view_module,
                              size: 26.0,
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.05,
                          width: size.height * 0.05,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: MyColors.primarycolors,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                          child: GestureDetector(

                            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> PopModelMenu() ));},
                            child: Icon(
                              Icons.menu,
                              size: 26.0,
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    child: SingleChildScrollView(
                        child: Container(
                      height: size.height * 0.63,
                      child: GridView.builder(
                        itemCount: 20,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return new Card(
                            child: new GridTile(
                              header: IconButton(
                                alignment: Alignment.topRight,
                                icon: Icon(Icons.more_horiz),
                                color: MyColors.whiteColor,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutMess()));
                                },
                              ),
                              footer: Container(
                                color: MyColors.blackcolor,
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: MyColors.whiteColor,
                                        ),
                                        Text("1.5K",
                                            style: TextStyle(
                                                color: MyColors.whiteColor))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.chat,
                                          color: MyColors.whiteColor,
                                        ),
                                        Text(
                                          "1.5K",
                                          style: TextStyle(
                                              color: MyColors.whiteColor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              child: Container(
                                child:
                                    new Image.asset('assets/images/avatar.jpg'),
                              ), //just for testing, will fill with image later
                            ),
                          );
                        },
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Payment Summery",
                      style:
                          TextStyle(fontSize: 21.0, color: MyColors.whiteColor),
                    ),
                  ),
                  Divider(
                    color: MyColors.whiteColor,
                    thickness: 2.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.0, top: 10.0),
                            child: Container(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 3.0,
                                      bottom: 3.0),
                                  child: Text(
                                    "Pending Invoice",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        MyColors.darkprimarycolor,
                                        MyColors.primarycolors
                                      ]),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: MyColors.lightOrangeText),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 35.0,
                              color: MyColors.whiteColor,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "01 April 2020 to 30 April 2020",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.whiteColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet,
                                size: 35.0, color: MyColors.whiteColor),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 5.0,
                                        bottom: 5.0),
                                    child: Text(
                                      "\u{20B9} 1,10,123/-",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        offset: const Offset(2.0, 2.0),
                                        blurRadius: 5.0,
                                        spreadRadius: 2.0,
                                      )
                                    ],
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          MyColors.pinkColor,
                                          MyColors.lightOrangeText
                                        ]),
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: MyColors.lightOrangeText),
                              ),
                            ),
                            Text(
                              "In processing",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.whiteColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: MyColors.whiteColor,
                    thickness: 2.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.0, top: 10.0),
                            child: Container(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 3.0,
                                      bottom: 3.0),
                                  child: Text(
                                    "Last Paid Invoice",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        MyColors.darkprimarycolor,
                                        MyColors.primarycolors
                                      ]),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: MyColors.lightOrangeText),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today,
                                size: 35.0, color: MyColors.whiteColor),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "01 March 2020 to 31 march 2020",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.whiteColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet,
                                size: 35.0, color: MyColors.whiteColor),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 5.0,
                                        bottom: 5.0),
                                    child: Text(
                                      "\u{20B9} 4,50,666/-",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: MyColors.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    )),
                                decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        offset: const Offset(2.0, 2.0),
                                        blurRadius: 5.0,
                                        spreadRadius: 2.0,
                                      )
                                    ],
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          MyColors.pinkColor,
                                          MyColors.lightOrangeText
                                        ]),
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: MyColors.lightOrangeText),
                              ),
                            ),
                            Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Past Payment Summary",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.whiteColor),
                            ),
                            Container(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 0.0,
                                      top: 5.0,
                                      bottom: 5.0),
                                  child: Text(
                                    "Incoming Revenue Breakup",
                                    style: TextStyle(
                                        fontSize: 13.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        MyColors.darkprimarycolor,
                                        MyColors.primarycolors
                                      ]),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: MyColors.lightOrangeText),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: MyColors.whiteColor,
                    thickness: 2.0,
                  ),
                  Container(
                    height: size.height * 0.5,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today,
                                        size: 30.0, color: MyColors.whiteColor),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "01 April 2020 to 30 April 2020",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: MyColors.whiteColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.account_balance_wallet,
                                        size: 30.0, color: MyColors.whiteColor),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                top: 5.0,
                                                bottom: 5.0),
                                            child: Text(
                                              "\u{20B9} 1,10,123/-",
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: MyColors.whiteColor,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                offset: const Offset(2.0, 2.0),
                                                blurRadius: 5.0,
                                                spreadRadius: 2.0,
                                              )
                                            ],
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  MyColors.pinkColor,
                                                  MyColors.lightOrangeText
                                                ]),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            color: MyColors.lightOrangeText),
                                      ),
                                    ),
                                    Text(
                                      "Paid",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: MyColors.whiteColor),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Divider(
                    color: MyColors.whiteColor,
                    thickness: 2.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35.0, top: 10.0),
                            child: Container(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 3.0,
                                      bottom: 3.0),
                                  child: Text(
                                    "Incoming Revenue Breakup",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        MyColors.darkprimarycolor,
                                        MyColors.primarycolors
                                      ]),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: MyColors.lightOrangeText),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: size.height * 0.4,
                        child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              color: MyColors.whiteColor,
                                              height: 18.0,
                                              width: 18.0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Text(
                                                  "#",
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.0),
                                              child: Text(
                                                "Photo Gift Live",
                                                style: TextStyle(
                                                    fontSize: 17.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: MyColors.whiteColor),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Container(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.0,
                                                  right: 10.0,
                                                  top: 3.0,
                                                  bottom: 3.0),
                                              child: Text(
                                                "\u{20B9} 56,500 /-",
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: MyColors.whiteColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          decoration: BoxDecoration(
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                  offset:
                                                      const Offset(2.0, 2.0),
                                                  blurRadius: 5.0,
                                                  spreadRadius: 2.0,
                                                )
                                              ],
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    MyColors.pinkColor,
                                                    MyColors.lightOrangeText
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              color: MyColors.lightOrangeText),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 3.0,
                                      bottom: 3.0),
                                  child: Text(
                                    "Total",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        MyColors.darkprimarycolor,
                                        MyColors.primarycolors
                                      ]),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: MyColors.lightOrangeText),
                            ),

                            Container(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      top: 3.0,
                                      bottom: 3.0),
                                  child: Text(
                                    "\u{20B9} 56,500 /-",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        MyColors.pinkColor,
                                        MyColors.lightOrangeText
                                      ]),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: MyColors.lightOrangeText),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: MyColors.whiteColor,
                    thickness: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Current Month Income: \u{20B9} 1,05,999",
                      style:
                          TextStyle(fontSize: 21.0, color: MyColors.whiteColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
                          child: Text(
                            "View Detailed Income Analysis",
                            style: TextStyle(
                                fontSize: 18.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          )),
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              offset: const Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                            )
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                MyColors.darkprimarycolor,
                                MyColors.primarycolors
                              ]),
                          borderRadius: BorderRadius.circular(5.0),
                          color: MyColors.lightOrangeText),
                    ),
                  ),
                  Divider(
                    color: MyColors.whiteColor,
                    thickness: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Income Contribution",
                      style:
                          TextStyle(fontSize: 21.0, color: MyColors.whiteColor),
                    ),
                  ),
                  Container(
                    width: 300.0,
                    child: Column(
                      children: [
                        Container(
                          width: 250.0,
                          child: Slider(
                            autofocus: true,
                            activeColor: MyColors.darkprimarycolor,
                            inactiveColor: MyColors.whiteColor,
                            min: 0,
                            max: 2,
                            value: index,
                            divisions: 2,
                            onChanged: (val) {
                              setState(() {
                                index = val;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Time",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: MyColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Post Month",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: MyColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Current Month",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: MyColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: size.height * 0.28,
                                width: size.height * 0.25,
                                child: Image.asset('assets/images/pichart.jpeg'))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: size.height * 0.21,
                                width: size.height * 0.21,
                                child: ListView.builder(
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Text(
                                        "[$index] Post Month",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: MyColors.whiteColor,
                                            fontWeight: FontWeight.bold),
                                      );
                                    }))
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: size.height * 0.35,
                              width: size.height * 0.45,
                              child: Image.asset('assets/images/chart.jpeg'))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                    height: size.height * 0.22,
                                    width: size.height * 0.22,
                                    child: ListView.builder(
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return Text(
                                            "[$index] Post Month",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: MyColors.whiteColor,
                                                fontWeight: FontWeight.bold),
                                          );
                                        }))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
        bottomNavigationBar: BottomBar(index: 0,),
      ),
    );
  }
}
