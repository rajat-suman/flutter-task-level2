import 'dart:convert';

import 'package:app_s_application2/core/app_export.dart';
import 'package:http/http.dart' as http;

import '../../core/utils/progress_dialog_utils.dart';
import '../../presentation/getstarted_screen/models/getstarted_model.dart';

class ApiClient extends GetConnect {
  Future<GetstartedModel>? registerUser(Map<String, String> map) async {
    ProgressDialogUtils.showProgressDialog(isCancellable: false);
    var url = Uri.parse('https://dummyjson.com/users/add');
    var response = await http.post(url, body: map);
    if (response.statusCode == 200) {
      ProgressDialogUtils.hideProgressDialog();
      Map<String, dynamic> res =  jsonDecode(response.body);
      print('Request success with response: ${response.body}.');
      GetstartedModel signUpResponse =  GetstartedModel.fromJson(res);
      return Future.value(signUpResponse);
    } else {
      ProgressDialogUtils.hideProgressDialog();
      print('Request failed with status: ${response.statusCode}.');
      Map<String, String> newMap = Map();
      newMap['error'] = 'Some Error Occurred!';
      return Future.value(GetstartedModel(
          id: null, name: null, email: null, password: null));
    }
  }

  Future<GetstartedModel>? updateUser(int userId, Map<String, String> map) async {
    print('Request success with response: ${userId}.');
    ProgressDialogUtils.showProgressDialog(isCancellable: false);
    var url = Uri.parse('https://dummyjson.com/users/add/$userId');
    var response = await http.put(url, body: map);
    if (response.statusCode == 200) {
      ProgressDialogUtils.hideProgressDialog();
      Map<String, dynamic> res =  jsonDecode(response.body);
      print('Request success with response: ${response.body}.');
      GetstartedModel signUpResponse =  GetstartedModel.fromJson(res);
      return Future.value(signUpResponse);
    } else {
      ProgressDialogUtils.hideProgressDialog();
      print('Request failed with status: ${response.statusCode}.');
      Map<String, String> newMap = Map();
      newMap['error'] = 'Some Error Occurred!';
      return Future.value(GetstartedModel(
          id: null, name: null, email: null, password: null));
    }
  }
}
