import 'package:devquiz/core/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'devquiz',
      debugShowCheckedModeBanner: false,
      home: AppWidget(),
    );
  }
}
