import 'package:flutter/material.dart';
import 'package:flutter_listview_exam/src/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }
}