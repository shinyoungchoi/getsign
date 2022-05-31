import 'package:flutter/material.dart';
import 'package:flutter_app3/auth/auth_manager.dart';
import 'package:flutter_app3/login_screen.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthMaanger _authManager = Get.find();

    return Obx(() {
      return _authManager.isLogged.value ? const HomeScreen() : LoginScreen();
    });
  }
}
