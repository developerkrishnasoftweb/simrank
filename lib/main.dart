import 'package:flutter/material.dart';
import 'package:simrank/constant/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:simrank/login_register/holistic_login.dart';
import 'package:simrank/login_register/login.dart';
import 'package:simrank/mainScreen/chat.dart';
import 'package:simrank/mainScreen/daimond.dart';
import 'package:simrank/mainScreen/menu.dart';
import 'package:simrank/mainScreen/overview.dart';
import 'package:simrank/mainScreen/shoutout.dart';
import 'package:simrank/mainScreen/shoutout_publish.dart';
import 'package:simrank/mainScreen/shoutout_upload_photo.dart';
import 'package:simrank/mainScreen/videos.dart';
import './mainScreen/simran_home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: string.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Videos(),
    );
  }
}