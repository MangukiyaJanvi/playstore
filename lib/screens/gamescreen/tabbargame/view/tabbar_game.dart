import 'package:flutter/material.dart';
import 'package:playstore/screens/gamescreen/topchartgame/topchart_screen.dart';
import 'package:playstore/screens/gamescreen/view/game_screen.dart';

import '../../../secondscreen/second_screen.dart';

class TabbarGame extends StatefulWidget {
  const TabbarGame({Key? key}) : super(key: key);

  @override
  State<TabbarGame> createState() => _TabbarGameState();
}

class _TabbarGameState extends State<TabbarGame> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 1,
                        offset: Offset(0, 1)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.menu,color: Colors.black,),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search for apps & games',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 5,
                      ),
                    ),
                    Icon(Icons.mic_none,color: Colors.black,),
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                Tab(child: Text('For You',style: TextStyle(color: Colors.black),),),
                Tab(child: Text('Top Chart',style: TextStyle(color: Colors.black),),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GameScreen(),
              ChartScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
