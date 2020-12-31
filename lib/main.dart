import 'package:flutter/material.dart';
import './authentication.dart';
import './screens/rootpage.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
   static const primarySwatch = Colors.green;
    static const buttonColor = Colors.green;
   static const appName = 'My App';
    static const homePageUnverified = false;

  final params = {
    'appName': appName,
    'primarySwatch': primarySwatch,
    'buttonColor': buttonColor,
    'homePageUnverified': homePageUnverified,
  };


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter login demo',
        debugShowCheckedModeBanner: true,
        theme: new ThemeData(
          primarySwatch: params['primarySwatch'],
        ),
        home: new RootPage(params: params, auth: new Auth()));
  }
}