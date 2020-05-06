import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:temp_app/weatherSection.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomHomePage(),
    );
  }
}

class CustomHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: _getCustomAppBar(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        index: 2,
        color: Colors.red,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.lightBlueAccent,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.white),
          Icon(Icons.usb, size: 20, color: Colors.white),
          Icon(Icons.speaker_notes, size: 20, color: Colors.white),
          Icon(Icons.menu, size: 20, color: Colors.white),
          Icon(Icons.add, size: 20, color: Colors.white),
        ],
        animationDuration: Duration(
          milliseconds: 300,
        ),
        animationCurve: Curves.elasticOut,
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellowAccent[100],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                WeatherSection(),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.bottomCenter,
            // decoration: BoxDecoration(
            //   image: new DecorationImage(
            //     image: new AssetImage('img/top_banner.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            //   boxShadow: [
            //     new BoxShadow(color: Color(0xFF030513), blurRadius: 3.0)
            //   ],
            // ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            //color: const Color(0xFF030513).withOpacity(0.3),
          ),
          Container(
            alignment: Alignment.center,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "KARTALKAYA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'DancingScript',
                    letterSpacing: 4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ));
}
