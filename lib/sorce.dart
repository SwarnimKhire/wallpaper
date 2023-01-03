import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

//String apiKey = "32488941-c01e91ccedbd4a702a1c4f5c9";



Future getpic() async {
  String url =
      'https://source.unsplash.com/random';
  http.Response response = await http.get(Uri.parse(url));

  return json.decode(response.body);
}
//http.get(Uri.parse('https://swapi.co/api/people'));