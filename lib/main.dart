import 'package:findcozy/providers/auth_provider_admin.dart';
import 'package:findcozy/providers/user_provider_admin.dart';
import 'package:findcozy/screens/admin/akun/akun_screen.dart';
import 'package:findcozy/screens/admin/home/home_screen_admin.dart';
import 'package:findcozy/screens/admin/main/main_screen_admin.dart';
import 'package:findcozy/screens/admin/sign_in_admin/sign_in_admin.dart';
import 'package:findcozy/screens/admin/sign_up_admin/sign_up_admin.dart';
import 'package:findcozy/screens/sign_in/sign_in_screen.dart';
import 'package:findcozy/screens/splash/splash_screen.dart';
import 'package:findcozy/screens/user/home/home_screen_user.dart';
import 'package:findcozy/screens/user/sign_in_user/sign_in_user.dart';
import 'package:findcozy/screens/user/main/main_screen_user.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProviderAdmin>(
          create: (context) => UserProviderAdmin(),
        ),
        ChangeNotifierProvider<AuthProviderAdmin>(
          create: (context) => AuthProviderAdmin(),
        )
      ],
      child: GetMaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/signin': (context) => SignInScreen(),
          '/signinadmin': (context) => SignInAdmin(),
          '/signupadmin': (context) => SignUpAdmin(),
          '/homeadmin': (context) => HomeScreenAdmin(),
          '/profileadmin': (context) => AkunScreen(),
          '/mainscreenadmin': (context) => MainScreenAdmin(),
          '/signinuser': (context) => SignInUser(),
          '/mainscreenuser': (context) => MainScreenUser(),
          '/homeuser': (context) => HomeScreenUser()
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: SplashScreen(),
      ),
    );
  }
}
