import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';

class PopModelMenu extends StatefulWidget {
  @override
  _PopModelMenuState createState() => _PopModelMenuState();
}

class _PopModelMenuState extends State<PopModelMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _dur;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            alignment: Alignment.centerRight,
            child: Container(
                //margin: EdgeInsets.only(top: size.height * 0.11),
                //height: size.height * 0.635,
                //width: size.width * 0.6,
                color: MyColors.blackText,
                child: SingleChildScrollView(
                  child: Container(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "FOLDER TYPE",
                          style: TextStyle(
                            fontSize: 19.0,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: MyColors.whiteColor,
                          ),
                        ),
                      ),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "All",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 1,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Photos",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 2,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Videos",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 3,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "ShoutOut",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 3,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "DM",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 3,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "CONTENT TYPE",
                          style: TextStyle(
                            fontSize: 19.0,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: MyColors.whiteColor,
                          ),
                        ),
                      ),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Photos",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 1,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Videos",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 2,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Album",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 3,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "MONITIZE TYPE",
                          style: TextStyle(
                            fontSize: 19.0,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: MyColors.whiteColor,
                          ),
                        ),
                      ),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Free",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 1,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Paid",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 2,
                          groupValue: 1,
                          onChanged: (val) {
                            setState(() {});
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "DURATION",
                          style: TextStyle(
                            fontSize: 19.0,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: MyColors.whiteColor,
                          ),
                        ),
                      ),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "None",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 0,
                          groupValue: _dur,
                          onChanged: (val) {
                            setState(() {
                              _dur = val;
                            });
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Last 7 Days",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 2,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Last 30 Days",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 3,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      RadioListTile(
                          activeColor: MyColors.lightOrangeText,
                          title: Text(
                            "Custom Date",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: MyColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          value: 4,
                          groupValue: 1,
                          onChanged: (val) {
                            print("valu is $val");
                          }),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              shape: BoxShape.rectangle,
                              color: MyColors.whiteColor,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 6.0,
                                    spreadRadius: 3.0,
                                    color: MyColors.whiteColor)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width * 0.3,
                                child: FlatButton(
                                    onPressed: () {}, child: Text("Apply")),
                              ),
                              Container(
                                width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    child: Text("Rest"),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                ))),
      ),
    );
  }
}

