import 'dart:convert';
import 'package:findcozy/models/user_model_admin.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class AuthProviderAdmin with ChangeNotifier {
  Future<UserModelAdmin> login(String email, String password) async {
    try {
      var body = {
        'email': email,
        'password': password,
      };

      var response = await http.post(
          Uri.parse('https://find-cozy.online/api/auth/login'),
          body: body);

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        return UserModelAdmin.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
