import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simrank/mainScreen/shoutout_message.dart';
import 'appbar_bottombar.dart';
import '../constant/Colors.dart';

class ShoutOutMess extends StatefulWidget {
  @override
  _ShoutOutMessState createState() => _ShoutOutMessState();
}

class _ShoutOutMessState extends State<ShoutOutMess> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.primarycolors,
      appBar: AppBar(
        leading: lead(context),
        actions: [action(context)],
        title: titlename(context),
        backgroundColor: MyColors.primarycolors,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: size.width,
              decoration: BoxDecoration(
                color: MyColors.darkprimarycolor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 35.0, bottom: 35.0, left: 25.0, right: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/avatar.jpg',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('ShoutOut',style: TextStyle(color: MyColors.whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutMessage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 5),
                height: 35,
                width: size.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
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
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Request: Video Message Now @ 399",style: TextStyle(fontSize: 15.0,
                        color: MyColors.whiteColor,
                        fontWeight: FontWeight.bold),),
                    Image.asset('assets/images/diamond.png', width: 40, height: 40,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 10.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Process",style: TextStyle(fontSize: 15.0,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold),),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 35.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        color: MyColors.primarycolors,
                        boxShadow: <BoxShadow> [
                          BoxShadow(offset: const Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,)
                        ]
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.redeem,
                        size: 26.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: size.width*0.15,
                    color: MyColors.darkprimarycolor,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        color: MyColors.primarycolors,
                        boxShadow: <BoxShadow> [
                          BoxShadow(offset: const Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,)
                        ]
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.textsms,
                        size: 26.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: size.width*0.15,
                    color: MyColors.darkprimarycolor,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.primarycolors,
                        boxShadow: <BoxShadow> [
                          BoxShadow(offset: const Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,)
                        ]
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite_border,
                        size: 26.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Send Request",style: TextStyle(fontSize: 15.0,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold),),

                  Text("Get Personalized Meg",style: TextStyle(fontSize: 15.0,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold),),

                  Text("Enjoy",style: TextStyle(fontSize: 15.0,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20, bottom: 5),
              height: 35,
              width: size.width*0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
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
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.textsms,color: MyColors.whiteColor,),
                  Container(
                    height: size.width*0.07,
                    width: 2,
                    color: MyColors.whiteColor,
                  ),
                  Text("My Message",style: TextStyle(fontSize: 17.0,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 8.0, left: 25.0, right: 25.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 27.0,
                    width: 27.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.primarycolors,
                        boxShadow: <BoxShadow> [
                          BoxShadow(offset: const Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,)
                        ]
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.message,
                        size: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Form Shared Shoutouts",style: TextStyle(fontSize: 15.0,
                        color: MyColors.whiteColor,
                        fontWeight: FontWeight.bold),),
                  ),
              ]
              ),
            ),

            Container(
              height: 170,
              width: size.width,
              decoration: BoxDecoration(
                color: MyColors.darkprimarycolor,
              ),
              child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Container(
                    height: 100.0,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/avatar.jpg',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                );
              })
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomBar(index: 3,),
    );
  }
}
