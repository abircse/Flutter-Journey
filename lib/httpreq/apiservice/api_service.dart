import 'package:flutter/foundation.dart';
import 'package:flutterjourney/httpreq/model/product_model.dart';

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

  Future<List<Product>?> getProducts() async {
    try {
      var url = Uri.parse("https://dummyjson.com/products");
      var response = await http.get(url);
      if (kDebugMode) {
        print(response.body);
      }
      if (response.statusCode == 200) {
        List<Product> productList = productsModelFromJson(response.body).products;
        return productList;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}