import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp1/controllers/bindings/authBinding.dart';
import 'package:todoapp1/utils/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      home: Root(),
      theme: ThemeData.dark(),
    );
  }
}
