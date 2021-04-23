import 'package:findcozy/screens/sign_in_admin/sign_in_admin.dart';
import 'package:findcozy/screens/sign_in_user/sign_in_user.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login Akun',
                  style: darkBlueTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Saya ingin login akun sebagai',
                  style: darkBlueTextStyle.copyWith(fontSize: 15),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(SignInAdmin());
                        },
                        child: Container(
                          height: 50,
                          color: softBlue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pemilik Kos',
                                style: darkBlueTextStyle.copyWith(
                                    fontSize: 15, color: white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(SignInUser());
                        },
                        child: Container(
                          color: darkBlue,
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pencari Kos',
                                style: darkBlueTextStyle.copyWith(
                                  fontSize: 15,
                                  color: white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
