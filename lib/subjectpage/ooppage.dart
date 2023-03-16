import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ooppage extends StatefulWidget {
  var chapterID;
  ooppage(this.chapterID);
  @override
  State<ooppage> createState() => _ooppageState();
}

class _ooppageState extends State<ooppage> {
  late InAppWebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Chapter ' + widget.chapterID.toString())),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse('about blank')),
          onWebViewCreated: (InAppWebViewController controller) {
            _controller = controller;
            if (widget.chapterID == "Ch 1") {
              _loadoophtmlch1();
            } else if (widget.chapterID == "Ch 2") {
              _loadoophtmlch2();
            }
          },
        ));
  }
}

_loadoophtmlch1() async {
  String fileText = await rootBundle.loadString("assets/oopch1.html");
  _ooppageState()._controller.loadData(
        data: fileText,
        mimeType: 'text/html',
        encoding: "UTF-8",
      );
}

_loadoophtmlch2() async {
  String fileText = await rootBundle.loadString("assets/oopch2.html");
  _ooppageState()._controller.loadData(
        data: fileText,
        mimeType: 'text/html',
        encoding: 'UTF-8',
      );
}
