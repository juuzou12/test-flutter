import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ugavitest/controller/auth_controller.dart';

class SignUpPage extends GetView<AuthController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.arguments['name'])
        ],
      ),
    );
  }

}