import 'package:skeleton/Models/user.dart';
import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  UserModel _currentUser;

  UserModel get currentUser {
    return _currentUser;
  }

  void setUser(UserModel user) {
    _currentUser = user;
    notifyListeners();
  }

  Future<UserModel> fetchUser() async {
    // fetch the user from the local or online and send the user back
    // for now let just manually set it up. uncomment it to get the guest screen
    // _currentUser = UserModel(id: "sa", email: "SA", phoneNumber: "SA", fullName: "ad");
    return _currentUser;
  }
}
