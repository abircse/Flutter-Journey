import 'package:flutter/foundation.dart';
import 'package:flutterjourney/getxnetwork/model/EmployeeModel.dart';
import 'package:http/http.dart' as http;

class UserRepository{

  static var client = http.Client();

  Future<List<Employee>?> fetchUser() async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
      var response = await http.get(url);
      if (kDebugMode) {
        print(response.body);
      }
      if (response.statusCode == 200) {
        return employeeModelFromJson(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}