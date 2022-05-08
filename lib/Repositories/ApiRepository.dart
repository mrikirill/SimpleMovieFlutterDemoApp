import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:simple_movie/Utilities/Constants.dart';

class ApiRepository {
  static Future get(String endpoint) async {
    final Map<String, String> headers = {
      "Authorization": "Bearer $API_KEY",
      "Content-Type": "application/json;charset=utf-8"
    };
    final response = await http.get(Uri.parse(endpoint), headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
