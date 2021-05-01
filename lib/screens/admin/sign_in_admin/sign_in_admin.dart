import 'package:findcozy/models/user_model_admin.dart';
import 'package:findcozy/providers/auth_provider_admin.dart';
import 'package:findcozy/providers/user_provider_admin.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SignInAdmin extends StatefulWidget {
  @override
  _SignInAdminState createState() => _SignInAdminState();
}

class _SignInAdminState extends State<SignInAdmin> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var authProviderAdmin = Provider.of<AuthProviderAdmin>(context);
    var userProviderAdmin = Provider.of<UserProviderAdmin>(context);

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
                      'Login Pemilik Kos',
                      style: darkBlueTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email *',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
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

                                  UserModelAdmin user =
                                      await authProviderAdmin.login(
                                          emailController.text,
                                          passwordController.text);
                                  setState(() {
                                    isLoading = false;
                                  });

                                  if (user == null) {
                                    showError('email atau password salah');
                                  } else {
                                    if (user.roles != 'adminkost') {
                                      showError(
                                          'Maaf, akun anda bukan role admin kost!');
                                    } else {
                                      Get.offAllNamed('/mainscreenadmin');
                                      print('sukses');
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
                          onPressed: () {
                            Get.toNamed('/signupadmin');
                          },
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
