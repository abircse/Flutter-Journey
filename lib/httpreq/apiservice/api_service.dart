import 'package:flutter/foundation.dart';

import '../constants/apiconstants.dart';
import '../model/user_model.dart';
import 'package:http/http.dart' as http;


class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (kDebugMode) {
        print(response.body);
      }
      if (response.statusCode == 200) {
        List<UserModel> userList = userModelFromJson(response.body);
        return userList;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}