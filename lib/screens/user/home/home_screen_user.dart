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
        child: Column(children: []),
      )),
    );
  }
}
