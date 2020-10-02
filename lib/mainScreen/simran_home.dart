import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
List statusItem = [
  {"imageUrl" : "provide/image/url"}
];
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: statusItem.length,
                    itemBuilder: (BuildContext context, int index){
                      return Text("hello");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
