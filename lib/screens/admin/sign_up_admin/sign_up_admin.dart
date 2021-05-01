import 'package:findcozy/models/user_model_admin.dart';
import 'package:findcozy/providers/auth_provider_admin.dart';
import 'package:findcozy/providers/user_provider_admin.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SignUpAdmin extends StatefulWidget {
  @override
  _SignUpAdminState createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
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
                      'Daftar Pemilik Kos',
                      style: darkBlueTextStyle.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          print('tes');
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            'assets/image/avatar.jpg',
                          ),
                          radius: 60,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nama *',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email *',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password *',
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'No. Hp *',
                      ),
                    ),
                    SizedBox(height: 70),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () async {
                          // if (emailController.text.isEmpty ||
                          //     passwordController.text.isEmpty) {
                          //   showError('Semua field harus diisi');
                          // } else {
                          //   setState(() {
                          //     isLoading = true;
                          //   });

                          //   UserModelAdmin user = await authProviderAdmin.login(
                          //       emailController.text, passwordController.text);
                          //   setState(() {
                          //     isLoading = false;
                          //   });

                          //   if (user == null) {
                          //     showError('email atau password salah');
                          //   } else {
                          //     if (user.roles != 'adminkost') {
                          //       showError(
                          //           'Maaf, akun anda bukan role admin kost!');
                          //     } else {
                          Get.offAllNamed('/mainscreenadmin');
                          // print('sukses');
                          // }
                          // }
                          // }
                        },
                        color: darkBlue,
                        child: Text(
                          'Daftar',
                          style: whiteTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sudah punya akun findcozy?',
                          style: greyTextStyle.copyWith(fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/signinadmin');
                          },
                          child: Text(
                            'Login',
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
