import 'package:flutter/material.dart';
import 'package:todoapp/screens/soccer_live.dart';
import 'package:todoapp/screens/weather.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: new Drawer(
        child: Container(
          color: Colors.pink[800],
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: [
              ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('Home',style: TextStyle(color: Colors.white),),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white,),
                title: Text('Profile',style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white,),
                title: Text('Contact',style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white,),
                title: Text('Setting',style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(Icons.sports_soccer, color: Colors.white,),
                title: Text('Soccer Live',style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SoccerLive(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.music_note_outlined, color: Colors.white,),
                title: Text('Music',style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SoccerLive(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.cloud, color: Colors.white,),
                title: Text('Weather',style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Weather(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.help_outline, color: Colors.white,),
                title: Text('Help',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}