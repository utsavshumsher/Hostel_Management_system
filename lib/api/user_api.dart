import 'package:dio/dio.dart';
import 'package:sleepholic/response/login_response.dart';

import '../constraints/api_url.dart';
import '../constraints/http_services.dart';
import '../model/user.dart';

class UserAPI {
  Future<bool> registerUser(User user) async {
    bool isRegister = false;
    Dio dio = HttpServices().getDioInstance();
    try {
      // dio ko response
      Response response = await dio.post(registerUrl, data: user.toJson());
      if (response.statusCode == 200) {
        isRegister = true;
        return isRegister;
      }
    } catch (exception) {
      print(exception);
    }
    return isRegister;
  }

  Future<bool> loginUser(String userName, String password) async {
    bool isLogin = false;
    Dio dio = HttpServices().getDioInstance();
    try {
      Map<String, dynamic> userLoginData = {
        "username": userName,
        "password": password
      };
      // dio ko response --> server le dine
      Response response = await dio.post(loginUrl, data: userLoginData);
      // response.data
      final LoginResponse loginResponseKoData =
          LoginResponse.fromJson(response.data);
      tokenConstant = loginResponseKoData.token;
      if (response.statusCode == 200) {
        isLogin = true;
        return isLogin;
      }
    } catch (exception) {
      print(exception);
    }
    return isLogin;
  }
}
