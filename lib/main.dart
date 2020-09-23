import 'package:flutter/material.dart';
import 'package:marian/Dashboard.dart';
import 'package:marian/Splash.dart';
import 'pages/PrayerRequest.dart';

void main()
{
  runApp(MaterialApp(
    title: "Marian",
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData(
      primaryColor: Color(0xff310C0A),
      //accentColor: Color(0xff545447),
      canvasColor: Color(0xffFFFFF7),
    ),
  ));

}
