import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

void main() => runApp(MyApp());
Future<String> loadAsset() async{
  return await rootBundle.loadString(key)
}