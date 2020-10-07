import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../constant/colors.dart';
class Loader{
  final BuildContext context;
  final String text;
  Loader({@required this.context, this.text = null}){
    Future<void> _Loader(context, text) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(left: 10, right: 15),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(color.loaderColor),
                    strokeWidth: 4,
                  ),
                ),
                Container(
                  child: Text((text != null && text != "") ? text : "Please wait..."),
                )
              ],
            ),
            scrollable: false,
          );
        },
      );
    }
    _Loader(context, text);
  }
}