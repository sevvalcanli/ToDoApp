import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp1/controllers/authController.dart';
import 'package:todoapp1/controllers/userController.dart';
import 'package:todoapp1/screens/home.dart';
import 'package:todoapp1/screens/login.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}
