import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import '../static/uploader.dart';
import '../constant/strings.dart';
import 'appbar_bottombar.dart';
class ShoutOutUploadPhotos extends StatefulWidget{
  @override
  _ShoutOutUploadPhotos createState() => _ShoutOutUploadPhotos();
}
class _ShoutOutUploadPhotos extends State<ShoutOutUploadPhotos>{
  File _image;
  File file;
  final picker = ImagePicker();
  Future getImage() async {
    final image = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        _image = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    void _showUploadDialog(File file, String path) {
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
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                      border: Border(top: BorderSide(color: Colors.white, width: 2))
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
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.white, ))
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: size.width,
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: Text("Upload Location : ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              height: 45,
                              width: size.width * 0.4,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide.none),
                                child: Text("GALLERY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                  ),
                                ),
                                color: Color.fromRGBO(158, 138, 191, 1),
                                onPressed: (){},
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              width: size.width * 0.4,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide.none),
                                child: Text("CAMERA",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ),
                                color: Color.fromRGBO(158, 138, 191, 1),
                                onPressed: (){},
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    width: size.width,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.white, ), bottom: BorderSide(color: Colors.white, ))
                    ),
                    child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                            child: Text("Media Details : ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            height: 300,
                            padding: EdgeInsets.all(20),
                            width: size.width,
                            color: Color.fromRGBO(0, 0, 0, 0.2),
                            child: Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: (_image != null ? FileImage(_image) : AssetImage("assets/images/icon-image-512.png")),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.4), BlendMode.darken),
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.edit,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  getImage();
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(right: 7),
                                      alignment: Alignment.topRight,
                                      width: size.width * 0.3,
                                      child: Text("Title : ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromRGBO(0, 0, 0, 0.2)
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: size.width * 0.6,
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                          decoration: InputDecoration(
                                            hintText: "Enter Title",
                                            hintStyle: TextStyle(
                                              color: Colors.white38,
                                            ),
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.only(left: 10, right: 10)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(right: 7),
                                      alignment: Alignment.topRight,
                                      width: size.width * 0.3,
                                      child: Text("Description : ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color.fromRGBO(0, 0, 0, 0.2)
                                      ),
                                      child: SizedBox(
                                        height: 80,
                                        width: size.width * 0.6,
                                        child: TextField(
                                          maxLines: 5,
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                          decoration: InputDecoration(
                                              hintText: "Enter Title",
                                              hintStyle: TextStyle(
                                                color: Colors.white38,
                                              ),
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(bottom: 10, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                  width: size.width * 0.3,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide.none),
                                    child: Text("Cancel",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                      ),
                                    ),
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    onPressed: (){
                                    },
                                  ),
                                ),
                                SizedBox(width: 10,),
                                SizedBox(
                                  height: 30,
                                  width: size.width * 0.3,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide.none),
                                    child: Text("Next",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                      ),
                                    ),
                                    color: Color.fromRGBO(158, 138, 191, 1),
                                    onPressed: (){
                                      String filepath = "images/${DateTime.now()}.png";
                                      _showUploadDialog(_image, filepath);
                                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutDetail()));
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
}