import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // status code is like error code as we know '404' is for error, 200 means everything is okay
      String data = response
          .body; // print(data); // this data is formatted in JSON format
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
