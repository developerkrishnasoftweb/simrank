import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';
import 'appbar_bottombar.dart';

class DMessage extends StatefulWidget {
  @override
  _DMessageState createState() => _DMessageState();
}

class _DMessageState extends State<DMessage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: drawer(context),
      backgroundColor: MyColors.primarycolors,
      appBar: AppBar(
        backgroundColor: MyColors.primarycolors,
        leading: lead(context),
        title: titlename(context),
        actions: [action(context)],
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.04),
                    height: 40,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: MyColors.whiteColor,width: 2
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          width: size.width * 0.6,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search of name",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),border: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.search),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        )
                      ],),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(onTap: (){
                      setState(() {
                        _counter++;
                      });
                    },
                      child: Container(
                        height: 35,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5.0),
                            color: MyColors.btncolorsprimary,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                  color: MyColors.btnsho)
                            ]),
                        child:  Center(
                            child: Text(
                              "Latest Chats",
                              style: TextStyle(
                                  color: MyColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          color: MyColors.btncolorsprimary,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                offset: const Offset(2.0, 2.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                color: MyColors.btnsho)
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _counter = 0;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "Unread Messages",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: new BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 16,
                                minHeight: 16,
                              ),
                              child: Text(
                                "$_counter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: size.height * 0.604,
                  width: size.width * 0.98,
                  decoration: BoxDecoration(
                    color: MyColors.darkprimarycolor,
                  ),
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top:size.width * 0.05,bottom: size.width * 0.05),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: size.height * 0.09,
                                      width:size.height * 0.09,
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                        AssetImage('assets/images/avatar.jpg'),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(flex: 1,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "hitesh Patil",
                                            style: TextStyle(
                                              color: MyColors.whiteColor,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,),
                                          ),
                                          Wrap(children: [
                                            Text(
                                              "Hey devs, today I'll show how toI'll show how to.Hey devs, today I'll show how toI'll show how toHey devs, today I'll show ",
                                              style: TextStyle(fontSize: 14.0,color: MyColors.whiteColor),
                                            ),
                                          ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: new BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      constraints: BoxConstraints(
                                        minWidth: 16,
                                        minHeight: 16,
                                      ),
                                      child: Text(
                                        "$_counter",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 0.5,
                                color: Colors.white,
                              )
                            ],
                          ),
                        );

                      })),
              Divider(
                thickness: 2,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
