import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    String page = data['text'];

    return Scaffold(
        appBar: AppBar(
          title: Text('Google Search'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: WebView(
          initialUrl: 'https://www.google.com/search?q=$page',
          javascriptMode: JavascriptMode.unrestricted,
        ),
    );
  }
}
