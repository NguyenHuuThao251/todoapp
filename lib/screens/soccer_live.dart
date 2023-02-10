import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

class SoccerLive extends StatefulWidget {
  @override
  State<SoccerLive> createState() => _SoccerLiveState();

}

class _SoccerLiveState extends State<SoccerLive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdColorWhite,
        elevation: 10,
        title: Text(
          "Soccer Board",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

}