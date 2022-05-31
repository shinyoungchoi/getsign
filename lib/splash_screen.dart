import 'package:flutter/material.dart';
import 'package:flutter_app3/board_screen.dart';
import 'package:get/get.dart';
import 'auth/auth_manager.dart';
import 'common/error_screen.dart';
import 'common/wating_screen.dart';
import 'dart:developer';

class SplashScreen extends StatelessWidget {
  AuthMaanger authManager = Get.put(AuthMaanger());

  Future<void> initializeSettings() async {
    log("gogo");
    //authManager.checkLoginStatus();

    await Future.delayed(Duration(seconds: 3000));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const WatingScreen();
        } else {
          if (snapshot.hasError) {
            return ErrorScreen(snapshot);
          } else
            return const BoardScreen();
        }
      },
      future: initializeSettings(),
    );
  }
}
