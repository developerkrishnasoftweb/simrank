import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'url.dart';
import 'data.dart';
import '../static/loader.dart';
Dio dio = new Dio();
class Services{
  static Future<Data> userSignIn(body, context, GlobalKey<ScaffoldState> _scaffoldKey) async {
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
    } on DioError catch (e) {
      Navigator.pop(context);
      if(e.error.toString() == "Http status error [401]"){
        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Invalid username or Password"),));
      }
      if(e.error.toString() == "Http status error [400]"){
        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Your account is not activated. Please activate your account!"),));
      }
    } on SocketException catch (_) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Please check your internet connection"),));
    }
  }

  static Future<Data> userSignUp(body, context, GlobalKey<ScaffoldState> _scaffoldKey) async {
    String url = Urls.baseUrl +Urls.userSignUp;
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
            "mobile" : jsonResponse['data']['mobile'],
            "image" : jsonResponse['data']['image'],
            "user_type" : jsonResponse['data']['user_type'],
            "created_at" : jsonResponse['data']['created_at'],
            "updated_at" : jsonResponse['data']['updated_at'],
          }
        ];
        data.data = list;
        return data;
      } else {
        throw Exception("Something went Wrong");
      }
    } on DioError catch (e) {
      Navigator.pop(context);
      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("The email address is already registered."),));
    }
  }
  static Future<Data> getModels(context, String token) async {
    String url = Urls.baseUrl + Urls.getModels;
    dio.options.contentType = Headers.jsonContentType;
    dio.options.headers["Authorization"] = "Bearer " + token;
    try {
      final response = await dio.get(url, options: Options(contentType: Headers.jsonContentType));
      Navigator.pop(context);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      if (response.statusCode == 200) {
        Data data = new Data();
        // print(response.data);
        // print("Data - " + json.decode(response.data.toString()));
        // final jsonResponse = json.decode(response.data.toString());
        final jsonResponse = response.data;
        data.message = jsonResponse['message'];
        data.response = jsonResponse['success'];
        List list;
        list = jsonResponse['data'];
        data.data = list;
        return data;
      } else {
        throw Exception("Something went Wrong");
      }
    } on DioError catch (e) {
      // _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("The email address is already registered."),));
    }
  }
  static Future<Data> saveMedia(context, String token, body, _scaffoldKey) async {
    String url = Urls.baseUrl + Urls.saveMedia;
    dio.options.contentType = Headers.jsonContentType;
    dio.options.headers["Authorization"] = "Bearer " + token;
    try{
      Loader(context: context, text: "Uploading media ...");
      final response = await dio.post(url, data: body);
      Navigator.pop(context);
      if(response.statusCode == 200){
        Data data = new Data();
        final jsonResponse = response.data;
        data.message = jsonResponse['message'];
        data.response = jsonResponse['success'];
        List list;
        list = [
          {
            "user_id" : jsonResponse["data"]["user_id"],
            "media_type" : jsonResponse["data"]["media_type"],
            "title" : jsonResponse["data"]["title"],
            "description" : jsonResponse["data"]["description"],
            "media_link" : jsonResponse["data"]["media_link"],
            "is_paid" : jsonResponse["data"]["is_paid"],
            "cost" : jsonResponse["data"]["cost"],
            "logo_position" : jsonResponse["data"]["logo_position"],
            "updated_at" : jsonResponse["data"]["updated_at"],
            "created_at" : jsonResponse["data"]["created_at"],
            "id" : jsonResponse["data"]["id"],
          }
        ];
        data.data = list;
        return data;
      } else {
        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Something went wrong !!!"),));
      }
    } on DioError catch (e) {
    }
  }
}