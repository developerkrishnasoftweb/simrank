import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/strings.dart';
import '../constant/colors.dart';

class VideoDownload extends StatefulWidget {
  @override
  _VideoDownloadState createState() => _VideoDownloadState();
}

class _VideoDownloadState extends State<VideoDownload> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primarycolors,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Column(
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
      ),
      body: Container(
          height: size.height,
          width: size.width,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/avatar.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: size.width * 0.18),
                    height: 25,
                    width: size.width * 0.22,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                      color: MyColors.primarycolors.withOpacity(0.7),
                    ),
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.av_timer,color: MyColors.whiteColor,),
                            Text(
                              "00:01:55",
                              style: TextStyle(
                                  color: MyColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                  Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        height: 30.0,
                        onPressed: () {},
                        color: MyColors.primarycolors.withOpacity(0.7),
                        textColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          size: 20,
                        ),
                        shape: CircleBorder(),
                      )),
                ],
              ),
              Container(
                  child: GestureDetector(
                    onTap: (){},
                    child: Image(height: 60.0,
                      image: AssetImage('assets/images/play.png'),
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 1,
                    width: size.width * 0.9,
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: size.height * 0.03),
                    padding: EdgeInsets.only(
                        left: size.width * 0.05, right: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: size.width * 0.43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.7),
                                blurRadius: 5,
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Click to Download",
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {},
                            color: MyColors.primarycolors,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: size.width * 0.43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.7),
                                blurRadius: 5,
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Delete",
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {},
                            color: MyColors.primarycolors,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
