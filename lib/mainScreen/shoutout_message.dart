import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simrank/mainScreen/shoutout_upload_photo.dart';
import 'appbar_bottombar.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';

class ShoutOutMessage extends StatefulWidget {
  @override
  _ShoutOutMessageState createState() => _ShoutOutMessageState();
}

class _ShoutOutMessageState extends State<ShoutOutMessage> {
  @override
  Icon CheckBtn = Icon(Icons.check, color: Colors.white);
  Icon PublicShoutOut = Icon(Icons.check, color: Colors.white);
  bool tnc = true;
  bool publicshoutout = true;
  Widget build(BuildContext context) {
    print("Terms and Condition - $tnc");
    print("Public shoutout - $publicshoutout");
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: drawer(context),
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
                      margin: EdgeInsets.only(bottom: 5),
                      height: 400,
                      width: size.width ,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/kaif.jpg'),
                            fit: BoxFit.fill
                        ),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('ShoutOut',style: TextStyle(color: MyColors.whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
                            Text('Please Write Your Message :',style: TextStyle(color: MyColors.whiteColor,fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: MyColors.lightpurple),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Ex: I want you to wish on my Birthday which is on 13 Feb. My name is Flash Gorden. Wish me Happy Birthday.'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           (CheckBtn.color == Colors.white) ? CheckBtn = Icon(Icons.check, color: Colors.transparent) : CheckBtn = Icon(Icons.check, color: Colors.white);
                           tnc = !tnc;
                         });
                       },
                       child: Container(
                         margin: EdgeInsets.only(top: 15, left: 10),
                         height: 30,
                         width: 30,
                         decoration: BoxDecoration(
                             color: MyColors.lightpurple),
                         child: CheckBtn,
                       ),
                     ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text('Terms And Conditions'),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          (PublicShoutOut.color == Colors.white) ? PublicShoutOut = Icon(Icons.check, color: Colors.transparent) : PublicShoutOut = Icon(Icons.check, color: Colors.white);
                          publicshoutout = !publicshoutout;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: MyColors.lightpurple),
                        child: PublicShoutOut,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text('Public Shoutout'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 8,right: 8),
                      height: 2,
                      width: size.width*0.25,
                      color: MyColors.whiteColor,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),

                        child: Text('Check Box To Proceed',style: TextStyle(fontSize: 10,color: MyColors.whiteColor),),
                      ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 8,right: 8),
                      height: 2,
                      width: size.width*0.25,
                      color: MyColors.whiteColor,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutUploadPhotos()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    height: 35,
                    width: size.width*0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.lightpurple
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Request: Video Message Now @ 399"),
                        Image.asset('assets/images/diamond2.png', width: 40, height: 40,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(index: 3,),
    );
  }
}
