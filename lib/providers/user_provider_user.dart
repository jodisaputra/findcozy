import 'package:findcozy/models/user_model_user.dart';
import 'package:flutter/foundation.dart';

class UserProviderUser with ChangeNotifier {
  UserModelUser _useruser;

  UserModelUser get useradmin => _useruser;

  set useradmin(UserModelUser newUser) {
    _useruser = newUser;
    notifyListeners();
  }
}
