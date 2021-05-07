import 'dart:io';

import 'package:findcozy/models/user_model_admin.dart';
import 'package:findcozy/providers/auth_provider_admin.dart';
import 'package:findcozy/providers/user_provider_admin.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SignUpAdmin extends StatefulWidget {
  @override
  _SignUpAdminState createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
  String dropdownValue = 'male';

  void showError(message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  // upload image
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        showError("gambar tidak dipilih");
      }
    });
  }

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
                          getImage();
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: _image == null
                              ? AssetImage(
                                  'assets/image/avatar.jpg',
                                )
                              : FileImage(File(_image.path)),
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
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jenis Kelamin',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        DropdownButton(
                          isExpanded: true,
                          value: dropdownValue,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              value: "male",
                              child: Text(
                                'Laki-laki',
                                style: blackTextStyle.copyWith(fontSize: 15),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "female",
                              child: Text(
                                'Perempuan',
                                style: blackTextStyle.copyWith(fontSize: 15),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 70),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () async {},
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
