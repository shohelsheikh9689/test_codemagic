import 'package:dio/dio.dart';
import 'package:bloc_login/data/model/login_check.dart';
import 'package:bloc_login/data/model/otp.dart';
import 'package:bloc_login/data/model/product_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  static const baseUrl = "http://45.79.125.120:8090/";

  static Future<Otp?> getOTP(String phoneNo) async {
    try {
      const requestUrl = baseUrl + "request_otp_user_login_web/";
      final param = {"mobile_no": phoneNo};
      Response response = await Dio().post(requestUrl, data: param);
      print(response.toString());
      if (response.statusCode == 200) {
        return otpFromJson(response.toString());
      } else {
        print(response.statusCode);
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<LoginCheck?> verifyLogin(String token, String phoneNo) async {
    try {
      const requestUrl = baseUrl + "user_login_check_web/";
      final param = {"mobile_no": phoneNo, "token": token};
      Response response = await Dio().post(requestUrl, data: param);
      print(response.toString());
      if (response.statusCode == 200) {
        SharedPreferences prefs = await SharedPreferences.getInstance();

        await prefs.setString('token', token);
        await prefs.setString('mobile_no', phoneNo);

        return loginCheckFromJson(response.toString());
      } else {
        print(response.statusCode);
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<ProductList?> getProductList(String subCatId) async {
    try {
      const requestUrl = baseUrl + "get_product_list_by_sub_category_web/";
      final param = {"sub_cat_id": subCatId};
      Response response = await Dio().post(requestUrl, data: param);
      if (response.statusCode == 200) {
        return productListFromJson(response.toString());
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
