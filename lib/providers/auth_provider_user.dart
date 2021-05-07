import 'dart:convert';
import 'package:findcozy/models/user_model_user.dart';
import 'package:findcozy/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthProviderUser with ChangeNotifier {
  Future logout(String token) async {
    try {
      var header = {'Authorization': 'Bearer ' + token};
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var response =
          await http.get(Uri.parse(baseUrl + 'auth/logout'), headers: header);

      print(response.statusCode);
      if (response.statusCode == 200) {
        prefs.remove('token');
        prefs.remove('role');
        return true;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<UserModelUser> login(String email, String password) async {
    try {
      var body = {
        'email': email,
        'password': password,
      };

      var response =
          await http.post(Uri.parse(baseUrl + 'auth/login'), body: body);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        print(data['data']['user']);

        UserModelUser.token = data['data']['access_token'];

        var user = UserModelUser.fromJson(data['data']['user']);

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', UserModelUser.token);
        await prefs.setString('role', user.roles);
        return user;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
