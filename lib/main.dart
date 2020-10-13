import 'package:flutter/material.dart';
import 'package:simrank/constant/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:simrank/static/image_picker.dart';
import './login_register/login.dart';
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
        fontFamily: "PrimaryFont",
      ),
      home: Login(),
    );
  }
}