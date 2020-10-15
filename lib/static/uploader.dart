import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
class Uploader extends StatefulWidget {
  final File file;
  final String path;
  final StorageMetadata metaData;
  Uploader({Key key, @required this.file, @required this.path, this.metaData}) : super();
  @override
  createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  @override
  Widget build(BuildContext context) {
    final StorageReference _storage = FirebaseStorage.instance.ref().child(widget.path);
    StorageUploadTask _storageUploadTask;
    setState(() {
      if(widget.file != null) _storageUploadTask = _storage.putFile(widget.file);
    });
    getUrl() async{
      SharedPreferences _preferences = await SharedPreferences.getInstance();
      final StorageTaskSnapshot downloadUrl =
      (await _storageUploadTask.onComplete);
      _preferences.setString("firebaseFileUrl", await downloadUrl.ref.getDownloadURL());
      return await downloadUrl.ref.getDownloadURL();
    }
    if(_storageUploadTask != null){
      getUrl();
      return StreamBuilder<StorageTaskEvent>(
        stream: _storageUploadTask.events,
        builder: (context, snapshot){
          var event = snapshot?.data?.snapshot;
          double processPercent = event != null ? event.bytesTransferred / event.totalByteCount : 0;
          if(_storageUploadTask.isSuccessful) Future.delayed(Duration(milliseconds: 500), (){Navigator.pop(context);});
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if(_storageUploadTask.isComplete)
                  Container(child: Text("Uploaded successfully !!!"), padding: EdgeInsets.only(bottom: 5, top: 5),),
                if(_storageUploadTask.isInProgress)
                  Container(child: Text("Uploading ..."), padding: EdgeInsets.only(bottom: 5, top: 5),),
                Container(width: MediaQuery.of(context).size.width * 0.5, child: LinearProgressIndicator(value: processPercent, minHeight: 2,), padding: EdgeInsets.only(bottom: 5, top: 5),),
                Container(child: Text("${(processPercent * 100).toStringAsFixed(2)} %"), padding: EdgeInsets.only(bottom: 5, top: 5),),
              ],
            ),
          );
        },
      );
    }
    return Scaffold(body: Center(child: Text("Something went wrong"),),);
  }
}