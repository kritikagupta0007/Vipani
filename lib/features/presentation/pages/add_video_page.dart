import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;

class AddVideoPage extends StatefulWidget {
  @override
  _AddVideoPageState createState() => _AddVideoPageState();
}

class _AddVideoPageState extends State<AddVideoPage> {
  File? file;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == Null) return;
    final path = result!.files.single.path!;
    print(path);
    final pathRequest = 'r' + '\'' + path + '\'';
    setState(() {
      file = File(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : "No file selected";
    return Scaffold(
      appBar: AppBar(
        title: Text("File Picker"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              selectFile();
            },
            child: Text("Select Files"),
          ),
          Text(fileName),
          ElevatedButton(
            onPressed: () async {
              var headers = {
                'x-amz-acl': 'bucket-owner-full-control',
                'Content-Type': 'video/mp4'
              };
              var request = http.Request(
                  'PUT',
                  Uri.parse(
                      'https://fluttervod-dev-input-aemgmnry.s3.us-east-2.amazonaws.com/for_documentation_mb_28oct.mp4'));
              request.body = r'';

              request.headers.addAll(headers);

              http.StreamedResponse response = await request.send();

              if (response.statusCode == 200) {
                // ignore: avoid_print
                print(await response.stream.bytesToString());
                print('uploaded');
              } else {
                print(response.reasonPhrase);
                print('not uploaded');
              }
            },
            child: Text("Upload Files"),
          )
        ],
      )),
    );
  }
}
