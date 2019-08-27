import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(body: Container(color: CSSColors.lightPink,)
    );
  }
}