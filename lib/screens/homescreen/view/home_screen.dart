import 'package:flutter/material.dart';
import 'package:playstore/screens/appsscreen/view/app_screen.dart';
import 'package:playstore/screens/gamescreen/tabbargame/view/tabbar_game.dart';
import 'package:playstore/screens/homescreen/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? hfalse;
  HomeProvider? htrue;
  List ScreenList=[TabbarGame(),AppScreen()];
  @override
  Widget build(BuildContext context) {
    hfalse=Provider.of<HomeProvider>(context,listen: false);
    htrue=Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            hfalse!.Add(value);
          },
          currentIndex: htrue!.i,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.gamepad_outlined), label: 'Games'),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Apps'),

          ],
        ),
        body: ScreenList[htrue!.i],

      ),
    );
  }
}
