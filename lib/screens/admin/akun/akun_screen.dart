import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';

class AkunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage('https://via.placeholder.com/150'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jodi Saragih',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '087732571273',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(Icons.person_outline_outlined, size: 35),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Informasi Akun',
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(Icons.logout, size: 35),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Logout',
                              style: blackTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
