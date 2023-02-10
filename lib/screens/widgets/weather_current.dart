import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/model/weather_now.dart';

Widget currentWeather(WeatherNow weatherNow) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Color.fromARGB(103, 5, 16, 23),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weatherNow.location!,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        Text(
          (weatherNow.temp! - 272.5).toStringAsFixed(2) + "°C",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 65),
        ),
        Image(
          height: 290,
          width: 290,
          image: NetworkImage(
            'https://openweathermap.org/img/wn/${weatherNow.url}.png',
          ),
          fit: BoxFit.cover,
        ),
        Text(
          weatherNow.status!,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.dangerous_sharp, size: 25, color: Colors.white),
                    ),
                    TextSpan(
                      text: "Dew ${weatherNow.humify} %",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.abc_sharp, size: 25, color: Colors.white),
                    ),
                    TextSpan(
                      text: "Dew ${weatherNow.dewPoint! / 1000} Km",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.wind_power, size: 25, color: Colors.white),
                    ),
                    TextSpan(
                      text: "Wind ${weatherNow.wind} Km/h",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.cloud, size: 25, color: Colors.white),
                    ),
                    TextSpan(
                      text: "Cloud ${weatherNow.cloud}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
