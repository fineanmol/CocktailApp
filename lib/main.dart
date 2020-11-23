import 'package:flutter/material.dart';
import 'package:essential2/homepage.dart';

const Color myColor = Colors.green;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New App",
      theme: ThemeData(
        primarySwatch: myColor,
        accentColor: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}
