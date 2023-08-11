import 'dart:convert';
import 'dart:io';

import '../entity/post.dart';

class ApiClient {
  final client = HttpClient();
  Future<List<Post>> getPost() async {
    final json = await get('https://www.cbr-xml-daily.ru/daily_json.js');
    final posts = json.map((e) => Post.fromJson(e as Map<String, dynamic>));
    return posts;
  }

  Future<dynamic> get(String url1) async {
    final Uri url = Uri.parse(url1);
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);
    return json;
  }
}
