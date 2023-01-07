import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // print('/////////// Get Done');
      return jsonDecode(response.body);
    } else {
      // print('/////////// Get Not Done');
      throw Exception(
          'There is a problem with status code ${response.statusCode}'
      );
    }
  }

  Future<dynamic> post(
      {required String url, required Map<String, String> body, token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      throw Exception('there is error in status code ${response.statusCode} with body : ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String url, required Map<String, String> body, token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
    await http.put(Uri.parse(url), body: body, headers: headers);
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      throw Exception('there is error in status code ${response.statusCode} with body : ${jsonDecode(response.body)}');
    }
  }
}
