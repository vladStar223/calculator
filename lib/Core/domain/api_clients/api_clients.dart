import 'dart:convert';
import 'dart:io';

class ApiClient {
  final client = HttpClient();
  void getPost() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    print(jsonStrings);
  }
}
