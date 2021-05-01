import 'package:findcozy/models/user_model_admin.dart';
import 'package:flutter/foundation.dart';

class UserProviderAdmin with ChangeNotifier {
  UserModelAdmin _useradmin;

  UserModelAdmin get useradmin => _useradmin;

  set useradmin(UserModelAdmin newUser) {
    _useradmin = newUser;
    notifyListeners();
  }
}
