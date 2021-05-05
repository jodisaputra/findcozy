import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token');
    String role = prefs.getString('role');
    if (token != null && role == 'adminkost') {
      return Timer(duration, () {
        Get.offNamed('/mainscreenadmin');
      });
    } else if (token != null && role == 'user') {
      return Timer(duration, () {
        Get.offNamed('/mainscreenuser');
      });
    } else if (token == null && role == null) {
      return Timer(duration, () {
        Get.offNamed('/signin');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 30),
            SpinKitWave(
              color: white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
