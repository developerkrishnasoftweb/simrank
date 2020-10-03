import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simrank/mainScreen/Tabbar.dart';
import 'package:simrank/mainScreen/daimond.dart';
import 'package:simrank/mainScreen/live.dart';
import 'package:simrank/mainScreen/menu.dart';
import 'package:simrank/mainScreen/overview.dart';
import 'package:simrank/mainScreen/shoutout.dart';
import 'package:simrank/mainScreen/simran_home.dart';
import 'package:simrank/mainScreen/videos.dart';
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
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
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
          shape: BoxShape.rectangle,
          color: MyColors.btncolorsprimary,
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: const Offset(2.0, 2.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
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
            size: 26.0,
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
                  height: 35,
                  width: 35,
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
                offset: const Offset(2.0, 2.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
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
      unselectedItemColor: Colors.black54,
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
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
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
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
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
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
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
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
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
                        offset: const Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
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
            backgroundColor: Color.fromRGBO(158, 138, 191, 1))
      ],
    );
  }
}
