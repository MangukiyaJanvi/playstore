import 'package:flutter/material.dart';
import 'package:playstore/screens/appsscreen/chartapp/chartapps.dart';
import 'package:playstore/screens/appsscreen/del/del_screen.dart';
import 'package:playstore/screens/appsscreen/social/view/social_screen.dart';
import 'package:playstore/screens/appsscreen/view/app_screen.dart';
import 'package:playstore/screens/gamescreen/tabbargame/view/tabbar_game.dart';
import 'package:playstore/screens/gamescreen/topchartgame/topchart_screen.dart';
import 'package:playstore/screens/gamescreen/view/game_screen.dart';
import 'package:playstore/screens/homescreen/provider/home_provider.dart';
import 'package:playstore/screens/homescreen/view/home_screen.dart';
import 'package:playstore/screens/musicscreen/view/music_screen.dart';
import 'package:playstore/screens/secondscreen/second_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'game': (context) => GameScreen(),
          'chartapp': (context) => ChartApps(),
          'chart': (context) => ChartScreen(),
          'app': (context) => AppScreen(),
          'music': (context) => MusicScreen(),
          'social': (context) => Social(),
          'del': (context) => Del(),
          'second': (context) => SecondScreen(),
          'tab': (context) => TabbarGame(),
        },
      ),
    ),
  );
}
