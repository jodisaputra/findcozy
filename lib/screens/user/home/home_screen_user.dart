import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';

class HomeScreenUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/image/sign_in_logo.png',
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Jodi',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Lagi cari apa ?',
                style: blackTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              SingleChildScrollView(
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/image/kost1.png',
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kost Sana Sini',
                            style: blackTextStyle.copyWith(fontSize: 22),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_pin),
                              Text(
                                'Bengkong',
                                style: blackTextStyle.copyWith(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
