import 'package:findcozy/providers/user_provider_admin.dart';
import 'package:findcozy/services/services.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenAdmin extends StatefulWidget {
  @override
  _HomeScreenAdminState createState() => _HomeScreenAdminState();
}

class _HomeScreenAdminState extends State<HomeScreenAdmin> {
  @override
  Widget build(BuildContext context) {
    var userAdminProvider = Provider.of<UserProviderAdmin>(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.network(
                          assetUrl + userAdminProvider.useradmin.profilePhoto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      userAdminProvider.useradmin.name,
                      style: darkBlueTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Waktunya mengelola Kos',
                          style: darkBlueTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Maksimalkan potensi properti anda dengan manajemen kos dari FindCozy',
                          style: darkBlueTextStyle.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.add_circle,
                                      size: 50,
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tambah Iklan',
                                          style: blackTextStyle.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('Buat Iklan Kos Anda'),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_right_outlined, size: 30)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
