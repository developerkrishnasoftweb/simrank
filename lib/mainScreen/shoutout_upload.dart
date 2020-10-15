import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'shoutout_monetize.dart';
import 'shoutout_detail.dart';
import '../static/uploader.dart';
import '../constant/strings.dart';
import 'appbar_bottombar.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
class ShoutOutUploadPhotos extends StatefulWidget{
  @override
  _ShoutOutUploadPhotos createState() => _ShoutOutUploadPhotos();
}
class _ShoutOutUploadPhotos extends State<ShoutOutUploadPhotos>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  File file, image;
  final picker = ImagePicker();
  String filepath, title, description, extension;
  var thumbnail;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    Future getFile() async {
      final fileData = await FilePicker.platform.pickFiles(allowMultiple: false, type: FileType.custom, allowedExtensions: ["png", "jpg", "mp4", "mkv", "jpeg"]);
      extension = fileData.files.single.extension;
      if(extension == "png" || extension == "jpg" || extension == "jpeg"){
        setState(() {
          file = File(fileData.files.single.path);
          image = file;
          filepath = "images/${DateTime.now().toString()}.${extension.toString()}";
        });
      }
      if(extension == "mp4" || extension == "mkv"){
        thumbnail = await VideoThumbnail.thumbnailFile(
          video: fileData.files.single.path,
          imageFormat: ImageFormat.PNG,
          quality: 25,
        );
        setState(() {
          image = File(thumbnail);
          file = File(fileData.files.single.path);
          filepath = "videos/${DateTime.now().toString()}.${extension.toString()}";
        });
      }
    }
    Future getImageByCamera() async {
      final _image = await picker.getImage(source: ImageSource.camera);
      setState(() {
        if (_image != null) {
          file = File(_image.path);
          image = file;
          print("hello");
        } else {
          print('No image selected.');
        }
      });
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
                                onPressed: getFile,
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
                                onPressed: (){
                                  getImageByCamera();
                                },
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
                                  image: image != null ? FileImage(image) : AssetImage("assets/images/icon-image-512.png"),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.4), BlendMode.darken),
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.edit,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: size.width,
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Form(
                              key: _formKey,
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
                                          child: TextFormField(
                                            validator: (value){
                                              if(value == null){
                                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please provide title")));
                                              }
                                              return null;
                                            },
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
                                            onChanged: (value){
                                              setState(() {
                                                title = value;
                                              });
                                            },
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
                                          child: TextFormField(
                                            validator: (value){
                                              if(value == null){
                                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please provide description")));
                                              }
                                              return null;
                                            },
                                            maxLines: 5,
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "Enter Description",
                                              hintStyle: TextStyle(
                                                color: Colors.white38,
                                              ),
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                                            ),
                                            onChanged: (value){
                                              setState(() {
                                                description = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
                                      if(_formKey.currentState.validate()){
                                        if(file != null){
                                          if(filepath != null){
                                            if(extension != null){
                                              if(title != null && description != null){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoutOutMonetize(title: title, file: file, description: description, extension: extension)));
                                              } else {
                                                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please enter Title or Description"),));
                                              }
                                            }
                                          }
                                        } else {
                                          _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please choose a file"),));
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
}