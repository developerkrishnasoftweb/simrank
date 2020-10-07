import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'url.dart';
import 'data.dart';
import '../static/loader.dart';
import '../mainScreen/simran_home.dart';
Dio dio = new Dio();
class Services{
  static Future<Data> userSignIn(body, context) async {
    String url = Urls.baseUrl +Urls.userSignIn;
    dio.options.contentType = Headers.jsonContentType;
    try {
      Loader(context: context, text: "Please Wait ...");
      final response = await dio.post(url, data: body, options: Options(contentType: Headers.jsonContentType));
      Navigator.pop(context);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      if(response.statusCode == 401){
        print("Invalid username and password");
      }
      if (response.statusCode == 200) {
        Data data = new Data();
        // print(response.data);
        // print("Data - " + json.decode(response.data.toString()));
        // final jsonResponse = json.decode(response.data.toString());
        final jsonResponse = response.data;
        data.message = jsonResponse['message'];
        data.response = jsonResponse['success'];
        List list;
        list = [
          {
            "id": jsonResponse['data']["id"],
            "first_name": jsonResponse['data']["first_name"],
            "model_name" : jsonResponse['data']["model_name"],
            "email" : jsonResponse['data']['email'],
            "email_verified_at" : jsonResponse['data']['email_verified_at'],
            "mobile" : jsonResponse['data']['mobile'],
            "image" : jsonResponse['data']['image'],
            "activation_code" : jsonResponse['data']['activation_code'],
            "device_token" : jsonResponse['data']['device_token'],
            "status" : jsonResponse['data']['status'],
            "created_at" : jsonResponse['data']['created_at'],
            "updated_at" : jsonResponse['data']['updated_at'],
            "deleted_at" : jsonResponse['data']['deleted_at'],
            "user_type" : jsonResponse['data']['user_type'],
            "access_token" : jsonResponse['data']['access_token'],
          }
        ];
        data.data = list;
        return data;
      } else {
        throw Exception("Something went Wrong");
      }
    } on SocketException catch (_) {
      throw Exception("Something went wrong");
    }
  }
  static Future<Data> userSignUp(body, context) async {
    String url = Urls.baseUrl +Urls.userSignIn;
    dio.options.contentType = Headers.jsonContentType;
    try {
      Loader(context: context, text: "Please Wait ...");
      final response = await dio.post(url, data: body, options: Options(contentType: Headers.jsonContentType));
      Navigator.pop(context);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      if (response.statusCode == 200) {
        Data data = new Data();
        // print(response.data);
        // print("Data - " + json.decode(response.data.toString()));
        // final jsonResponse = json.decode(response.data.toString());
        print("something wrong");
        final jsonResponse = response.data;
        data.message = jsonResponse['message'];
        data.response = jsonResponse['success'];
        List list;
        list = [
          {
            "id": jsonResponse['data']["id"],
            "first_name": jsonResponse['data']["first_name"],
            "model_name" : jsonResponse['data']["model_name"],
            "email" : jsonResponse['data']['email'],
            "email_verified_at" : jsonResponse['data']['email_verified_at'],
            "mobile" : jsonResponse['data']['mobile'],
            "image" : jsonResponse['data']['image'],
            "activation_code" : jsonResponse['data']['activation_code'],
            "device_token" : jsonResponse['data']['device_token'],
            "status" : jsonResponse['data']['status'],
            "created_at" : jsonResponse['data']['created_at'],
            "updated_at" : jsonResponse['data']['updated_at'],
            "deleted_at" : jsonResponse['data']['deleted_at'],
            "user_type" : jsonResponse['data']['user_type'],
            "access_token" : jsonResponse['data']['access_token'],
          }
        ];
        data.data = list;
        return data;
      } else {
        throw Exception("Something went Wrong");
      }
    } on DioError catch (e) {
      print("Hello" + e.toString());
    }
  }
}