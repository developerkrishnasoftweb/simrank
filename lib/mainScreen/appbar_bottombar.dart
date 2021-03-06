import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Tabbar.dart';
import 'daimond.dart';
import 'live.dart';
import 'menu.dart';
import 'overview.dart';
import 'shoutout.dart';
import 'simran_home.dart';
import 'videos.dart';
import '../constant/colors.dart';
import '../constant/strings.dart';

Widget lead(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: MyColors.btncolorsprimary,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 5.0,
                  spreadRadius: 0,
                  color: MyColors.btnsho)
            ]),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          },
          child: Icon(
            Icons.menu,
            size: 26.0,
          ),
        ),
      ),
    ],
  );
}

Widget titlename(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: MyColors.btncolorsprimary,
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 5.0,
                color: MyColors.btnsho)
          ],
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            Icons.home,
            size: 24.0,
          ),
        ),
      ),
      Column(
        children: [
          Text(
            Strings.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "LogoFont",
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            Strings.subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "LogoText", fontSize: 15.0),
          ),
        ],
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => daimond()));
        },
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/diamond.png',
                  height: 39,
                  width: 39,
                ),
                Text(
                  "999",
                  style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
                )
              ],
            )),
      )
    ],
  );
}

Widget action(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: MyColors.btncolorsprimary,
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 5.0,
                spreadRadius: 0.0,
                color: MyColors.btnsho)
          ]),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.search,
          size: 26.0,
        ),
      ),
    ),
  );
}


Widget drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            color: MyColors.btncolorsprimary,
          ),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width:MediaQuery.of(context).size.height * 0.09,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  AssetImage('assets/images/avatar.jpg'),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "hitesh Patil",
                    style: TextStyle(
                      color: MyColors.whiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,),
                  ),

                  Text("+91 9638527412",
                    style: TextStyle(fontSize: 14.0,color: MyColors.whiteColor),
                  ),
                  Text("user12@gmail.com",
                    style: TextStyle(fontSize: 14.0,color: MyColors.whiteColor),
                  ),

                ],
              ),
            ],
          ),),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.account_circle),
          title: Text("My Account"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.account_balance_wallet),
          title: Text("Wallet"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.graphic_eq),
          title: Text("Recharge Gems"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.headset_mic),
          title: Text("Help & Supports"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.pregnant_woman),
          title: Text("Super Fan"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        ListTile(
          onTap: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Tablayout() ));
          },
          leading: Icon(Icons.share),
          title: Text("Share"),
        ),
        ListTile(
          onTap: (){
          },
          leading: Icon(Icons.exit_to_app),
          title: Text("LogOut"),
        ),

      ],
    ),);
}

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();

  BottomBar({this.index}) : super();
  final int index;
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.index,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black.withOpacity(0.7),
      backgroundColor: Color.fromRGBO(158, 138, 191, 1),
      onTap: (index) {
        setState(() {
          switch (index) {
            case 0:
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tablayout()));
              break;
            case 1:
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Videos()));
              break;
            case 2:
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Live()));
              break;
            case 3:
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ShoutOut()));
              break;
            case 4:
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OverView()));
              break;
          }
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.btncolorsprimary,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        color: MyColors.btnsho)
                  ]),
              child: Icon(
                Icons.photo,
                size: 25.0,
              ),
            ),
            title: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Photo",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0))),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)),
        BottomNavigationBarItem(
            icon: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.btncolorsprimary,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 0,
                        color: MyColors.btnsho)
                  ]),
              child: Icon(
                Icons.ondemand_video,
                size: 25.0,
              ),
            ),
            title: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Video",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0))),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)),
        BottomNavigationBarItem(
            icon: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.btncolorsprimary,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        color: MyColors.btnsho)
                  ]),
              child: Icon(
                Icons.local_library,
                size: 25.0,
              ),
            ),
            title: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Live",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0))),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)),
        BottomNavigationBarItem(
            icon: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.btncolorsprimary,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 0,
                        color: MyColors.btnsho)
                  ]),
              child: Icon(
                Icons.live_tv,
                size: 25.0,
              ),
            ),
            title: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Shout Out",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0))),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)),
        BottomNavigationBarItem(
            icon: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.btncolorsprimary,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 0,
                        color: MyColors.btnsho)
                  ]),
              child: Icon(
                Icons.chat,
                size: 25.0,
              ),
            ),
            title: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("DM",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0))),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)),
      ],
    );
  }
}
