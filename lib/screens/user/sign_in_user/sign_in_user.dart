import 'package:findcozy/models/user_model_user.dart';
import 'package:findcozy/providers/auth_provider_user.dart';
import 'package:findcozy/providers/user_provider_user.dart';
import 'package:findcozy/screens/user/main/main_screen_user.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignInUser extends StatefulWidget {
  @override
  _SignInUserState createState() => _SignInUserState();
}

class _SignInUserState extends State<SignInUser> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var authProviderUser = Provider.of<AuthProviderUser>(context);
    var userProviderUser = Provider.of<UserProviderUser>(context);

    void showError(message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );
    }

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
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email *',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password *',
                      ),
                    ),
                    SizedBox(height: 70),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: isLoading == true
                          ? SpinKitWave(
                              color: black,
                              size: 30.0,
                            )
                          : MaterialButton(
                              onPressed: () async {
                                if (emailController.text.isEmpty ||
                                    passwordController.text.isEmpty) {
                                  showError('Semua field harus diisi');
                                } else {
                                  setState(() {
                                    isLoading = true;
                                  });

                                  UserModelUser user =
                                      await authProviderUser.login(
                                          emailController.text,
                                          passwordController.text);
                                  setState(() {
                                    isLoading = false;
                                  });

                                  if (user == null) {
                                    showError('email atau password salah');
                                  } else {
                                    if (user.roles != 'user') {
                                      showError(
                                          'maaf, anda tidak memiliki akses');
                                    } else {
                                      userProviderUser.useruser = user;
                                      Get.offAllNamed('/mainscreenuser');
                                    }
                                  }
                                }
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
