import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todoapp/model/weather_now.dart';
class ApiManager {
  static Future<List<String>> getImage() async {
    var currencyURL = Uri.https("contextualwebsearch-websearch-v1.p.rapidapi.com", "/Search/ImageSearchAPI",
    {"q": "natural landscape", "pageNumber": "1", "pageSize": "10", "autoCorrect": "true"});
    final res = await http.get(currencyURL, headers: {
      "x-rapidapi-key": "eeea5cd2d2msh21a7837efffc7a8p1a5317jsnb54b689dc1a3",
      "x-rapidapi-host": "contextualwebsearch-websearch-v1.p.rapidapi.com"
    });
    if(res.statusCode == 200) {
      List<String> temp = (jsonDecode(res.body) as List<dynamic>).cast<String>();
      return temp;
    } else {
      throw Exception('Failed to connect to API');
    }
  }

  static Future<WeatherNow>? getWeather(String location) async {
    var currencyURL = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=hanoi&appid=2ee8d9863c95a45ac42ddbe5085fe3a6");
    var res = await http.get(currencyURL);
    print(res.statusCode);
    if(res.statusCode == 200) {
      var body = jsonDecode((res.body));
      return WeatherNow.fromJson(body);
    } else {
      throw Exception('Failed to connect to API');
    }
  }
}