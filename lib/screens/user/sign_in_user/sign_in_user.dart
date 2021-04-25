import 'package:findcozy/screens/user/main/main_screen.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInUser extends StatefulWidget {
  @override
  _SignInUserState createState() => _SignInUserState();
}

class _SignInUserState extends State<SignInUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 2,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login Pencari Kos',
                      style: darkBlueTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email *',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password *',
                      ),
                    ),
                    SizedBox(height: 70),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          Get.offAll(MainScreen());
                        },
                        color: darkBlue,
                        child: Text(
                          'Login',
                          style: whiteTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun findcozy?',
                          style: greyTextStyle.copyWith(fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Daftar Sekarang',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
