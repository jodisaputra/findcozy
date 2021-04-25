import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';

class KelolaScreen extends StatefulWidget {
  @override
  _KelolaScreenState createState() => _KelolaScreenState();
}

class _KelolaScreenState extends State<KelolaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          'Kelola',
          style: blackTextStyle.copyWith(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Column(
                children: [
                  Text(
                    'Properti Saya',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
