
import 'package:sleepholic/api/user_api.dart';
import 'package:sleepholic/model/user.dart';

class UserRepository {
  Future<bool> registerUser(User user) async {
    return await UserAPI().registerUser(user);
  }

  Future<bool> loginUser(String userName, String password) async {
    return await UserAPI().loginUser(userName, password);
  }
}

