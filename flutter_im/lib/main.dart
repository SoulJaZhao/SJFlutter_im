import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

void main() => runApp(new MaterialApp(
  title: "聊天室",
  theme: mDefaultTheme,
  routes: <String, WidgetBuilder> {
    "app" : (BuildContext context) => new App(),
    "/friends" : (_)=> new WebviewScaffold(
      url: "https://flutter.io",
      appBar: AppBar(
        title: Text('Flutter官网'),
      ),
      withZoom: true,
      withLocalStorage: true,
    ),
    'search' : (BuildContext context) => new Search(),
  },
  home: new LoadingPage(),
));

// 主题
final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xffebebeb),
  cardColor: Colors.green,
);

