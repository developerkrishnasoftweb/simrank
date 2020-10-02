import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simrank/mainScreen/Tabbar.dart';
import 'package:simrank/mainScreen/daimond.dart';
import 'package:simrank/mainScreen/live.dart';
import 'package:simrank/mainScreen/menu.dart';
import 'package:simrank/mainScreen/overview.dart';
import 'package:simrank/mainScreen/shoutout.dart';
import 'package:simrank/mainScreen/videos.dart';
Widget lead(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(158, 138, 191, 1),
            boxShadow: <BoxShadow> [
              BoxShadow(offset: const Offset(2.0, 2.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,)
            ]
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
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
Widget titlename(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(158, 138, 191, 1),
            boxShadow: <BoxShadow> [
              BoxShadow(offset: const Offset(2.0, 2.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,)
            ]
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Tablayout()));
          },
          child: Icon(
            Icons.home,
            size: 26.0,
          ),
        ),
      ),
      Text(
        "Simran K" + '\n' + "Official app",
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => daimond()));
        },
        child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Image.asset('assets/images/diamond.png')),
      )
    ],
  );
}

Widget action(BuildContext context){
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(158, 138, 191, 1),
          boxShadow: <BoxShadow> [
            BoxShadow(offset: const Offset(2.0, 2.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,)
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
      currentIndex: widget.index,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (index){
        setState(() {
          switch(index){
            case 0:
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Tablayout()));
              break;
            case 1:
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Videos()));
              break;
            case 2:
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Live()));
              break;
            case 3:
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOut()));
              break;
            case 4:
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OverView()));
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
                  color: Color.fromRGBO(158, 138, 191, 1),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: const Offset(2.0, 2.0),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    )
                  ]),
              child: Icon(
                Icons.photo,
                size: 25.0,
              ),
            ),
            title: Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Photo")),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(158, 138, 191, 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  )
                ]),
            child: Icon(
              Icons.ondemand_video,
              size:25.0,
            ),
          ),
          title: Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Video")),
          backgroundColor: Color.fromRGBO(158, 138, 191, 1)
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(158, 138, 191, 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  )
                ]),
            child: Icon(
              Icons.local_library,
              size: 25.0,
            ),
          ),
          title: Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Live")),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(158, 138, 191, 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  )
                ]),
            child: Icon(
              Icons.live_tv,
              size: 25.0,
            ),
          ),
          title: Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Shout Out")),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(158, 138, 191, 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  )
                ]),
            child: Icon(
              Icons.chat,
              size: 25.0,
            ),
          ),
          title: Padding(padding:EdgeInsets.only(top: 5.0),child: Text("DM")),
            backgroundColor: Color.fromRGBO(158, 138, 191, 1)
        )
      ],
    );
  }
}
