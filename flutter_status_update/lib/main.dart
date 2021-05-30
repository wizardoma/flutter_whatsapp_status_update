import 'package:flutter/material.dart';
import 'package:flutter_status_update/commons/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: null,
      theme: kTheme,
    );
  }
}
