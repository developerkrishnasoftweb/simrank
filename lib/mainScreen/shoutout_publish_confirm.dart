import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simrank/mainScreen/Tabbar.dart';
import 'package:simrank/mainScreen/simran_home.dart';
import 'package:simrank/static/loader.dart';
import '../constant/strings.dart';
import 'dart:io';
import 'appbar_bottombar.dart';
import '../static/uploader.dart';
import '../services/services.dart';
class ShoutOutPublishConfirm extends StatefulWidget{
  final File file;
  final String title, description, extension, isPaid, uploadFolder;
  final int cost, logoPosition;
  ShoutOutPublishConfirm({@required this.file, @required this.title, @required this.description, @required this.extension, this.cost, this.isPaid, this.uploadFolder, this.logoPosition}) : assert (description != null && file != null && title != null && extension != null);
  @override
  _ShoutOutPublishConfirm createState() => _ShoutOutPublishConfirm();
}
class _ShoutOutPublishConfirm extends State<ShoutOutPublishConfirm>{
  bool platformIos = true;
  bool platformAndroid = true;
  bool platformWeb = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void _showUploadDialog(File file, String path) async {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Uploader(file: file, path: path),
          );
        },
      );
    }
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: drawer(context),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(158, 138, 191, 1),
          leading: lead(context),
          actions: [action(context)],
          title: titlename(context),
        ),
        body: Container(
          color: Color.fromRGBO(158, 138, 191, 0.8),
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.white))
                  ),
                  child: Text(string.shoutOutTitle,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Upload",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(158, 138, 191, 1),
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Monetize",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 138, 191, 1),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                      spreadRadius: 0.1,
                                      blurRadius: 5,
                                      offset: Offset(-2, 2)
                                  )
                                ]
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        spreadRadius: 0.1,
                                        blurRadius: 5,
                                        offset: Offset(-2, 2)
                                    )
                                  ]
                              ),
                              child: Text("4",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Text("Publish",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    width: size.width,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.white, ),)
                    ),
                    child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text("CONTENT DETAILS : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: size.width,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: size.width,
                                        alignment: Alignment(-0.8, 0.0),
                                        child: Text("Publish on platforms"),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: size.width,
                                        child: CheckboxListTile(
                                          title: Text("IOS"),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          value: platformIos,
                                          onChanged: (value){
                                            setState(() => platformIos = !platformIos);
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: size.width,
                                        child: CheckboxListTile(
                                          title: Text("ANDROID"),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          value: platformAndroid,
                                          onChanged: (value){
                                            setState(() {
                                              platformAndroid = !platformAndroid;
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: size.width,
                                        child: CheckboxListTile(
                                          title: Text("WEB"),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          value: platformWeb,
                                          onChanged: (value){
                                            setState(() {
                                              platformWeb = !platformWeb;
                                            });
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(bottom: 10, right: 20, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                  width: size.width * 0.3,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide.none),
                                    child: Text("Prev",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                      ),
                                    ),
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                SizedBox(
                                  height: 30,
                                  width: size.width * 0.3,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide.none),
                                    child: Text("Upload",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                      ),
                                    ),
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    onPressed: () async {
                                      int mediaType;
                                      String path = "${widget.uploadFolder}/${DateTime.now()}.${widget.extension}";
                                      final StorageReference _storage = FirebaseStorage.instance.ref().child(path);
                                      StorageUploadTask _storageUploadTask;
                                      setState(() {
                                        if(widget.file != null) _storageUploadTask = _storage.putFile(widget.file);
                                      });
                                      if(_storageUploadTask.isInProgress)
                                        Loader(context: context, text: "Uploading Media ...");
                                      final StorageTaskSnapshot downloadUrl = await _storageUploadTask.onComplete;
                                      if(_storageUploadTask.isComplete){
                                        if(widget.extension == "png" || widget.extension == "jpg" || widget.extension == "jpeg"){
                                          setState(() {
                                            mediaType = 1;
                                          });
                                        }
                                        if(widget.extension == "mp4" || widget.extension == "mkv"){
                                          setState(() {
                                            mediaType = 2;
                                          });
                                        }
                                        if(mediaType != null && await downloadUrl.ref.getDownloadURL() != null){
                                          uploadMedia(mediaType, await downloadUrl.ref.getDownloadURL(), widget.title, widget.description, widget.isPaid, widget.cost, widget.logoPosition, "");
                                        } else {
                                          print("something went wrong");
                                        }
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ]
                    )
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(index: 3,),
      ),
    );
  }

  void uploadMedia(mediaType, mediaLink, title, description, isPaid, cost, logoPosition, mediaThumbnail) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    if(_preferences.get("data") != null){
      FormData formData = new FormData.fromMap({
        "media_type" : mediaType,
        "media_link" : mediaLink,
        "title" : title,
        "description" : description,
        "is_paid" : isPaid,
        "cost" : cost,
        "logo_position" : logoPosition,
        "media_thumbnail" : mediaThumbnail,
      });
      String token;
      setState(() {
        token = _preferences.getStringList("data")[14];
      });
      Services.saveMedia(context, token, formData, _scaffoldKey).then((value) async {
        if(value.response){
          print(value.data);
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Tablayout()), (route) => false);
        }
        else {
          print(value.response);
        }
      });
    } else {
      ///TODO : Show error message
    }
  }
}