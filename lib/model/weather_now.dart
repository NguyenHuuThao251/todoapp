class WeatherNow {
  String? location;
  double? temp;
  String? url;
  int? humify;
  double? wind;
  int? dewPoint;
  String? status;
  int? cloud;

  WeatherNow({
    required this.location,
    required this.temp,
    required this.url,
    required this.humify,
    required this.wind,
    required this.dewPoint,
    required this.status,
    required this.cloud
  });

  WeatherNow.fromJson(Map<String, dynamic> json) {
    location = json["name"];
    temp = json["main"]["temp"];
    url = json["weather"][0]["icon"];
    humify = json["main"]["humidity"];
    wind = json["wind"]["speed"];
    dewPoint = json["visibility"];
    status = json["weather"][0]["description"];
    cloud = json["clouds"]["all"];
  }


}