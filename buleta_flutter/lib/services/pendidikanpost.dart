import 'dart:convert';

import 'package:http/http.dart' as http;

class PendidikanPost {
  String baseUrl =
      "https://mediacenter.palangkaraya.go.id/wp-json/wp/v2/posts?_embed&categories=13";
  Future<List> getAllPost() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error");
      }
    } catch (SocketException) {
      return Future.error("Error Fetching Data");
    }
  }
}
