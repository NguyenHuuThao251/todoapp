import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/api/api_manager.dart';
import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/model/weather_now.dart';
import 'package:todoapp/screens/widgets/weather_current.dart';

class Weather extends StatefulWidget {
  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late List<String> imagesBackGround;
  late WeatherNow weatherNow;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getWeatherNow("Ha Noi");
  }

  Future<void> getWeatherNow(String? location) async {
    weatherNow = (await ApiManager.getWeather(location!))!;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.green,
          elevation: 10,
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(
                backgroundColor: Colors.black.withOpacity(0.1),
              ))
            : Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://news.cgtn.com/news/2021-07-25/Treasure-of-Nature-Natural-landscapes-formed-by-rock-and-rain-12bfdjNdIGs/img/d9fa38a31b334a20a557cd423a48bb2a/d9fa38a31b334a20a557cd423a48bb2a.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      searchBox(),
                      currentWeather(weatherNow),

                    ],
                  ),
                )));
  }
  Container searchBox() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        onChanged: (value) => {

        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: 'Search'),
      ),
    );
  }
}


