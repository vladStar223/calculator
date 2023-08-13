import 'dart:convert';
import 'dart:io';

import '../entity/post.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<dynamic> fetchPost() async {
    try {
      final response = await http
          .get(Uri.parse('https://www.cbr-xml-daily.ru/daily_json.js'));
      print(response.statusCode);
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print(response.statusCode);
        return Post.fromJson(jsonDecode(response.body));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        return "Данные не получены";
        throw Exception('Failed to load album');
      }
    } catch (e) {
      return "Данные не получены";
    }
  }
  /*
  final client = HttpClient();
  Future<dynamic> getPost() async {
    final json = await get('https://www.cbr-xml-daily.ru/daily_json.js');
    final dynamic posts =
        json.map((e) => Post.fromJson(e as Map<String, dynamic>));
    return posts;
  }
  */

/*
  Future<dynamic> get(String url1) async {
    final Uri url = Uri.parse(url1);
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);
    return json;
  }

 */
}
