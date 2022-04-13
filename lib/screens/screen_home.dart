import 'package:cloneclaroapp/controllers/controller_home_screen.dart';
import 'package:cloneclaroapp/screens/screen_content_home.dart';
import 'package:cloneclaroapp/screens/screen_free_coins.dart';
import 'package:cloneclaroapp/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ScreenHomePage extends StatefulWidget {
  ScreenHomePage({Key? key}) : super(key: key);

  @override
  State<ScreenHomePage> createState() => _ScreenHomePageState();
}

class _ScreenHomePageState extends State<ScreenHomePage> {
  ControllerHomeScreen _controllerHomeScreen = ControllerHomeScreen();
  final _pages = [ScreenContentHome(), ScreenFreeCoins(), Settings()];

  _bottomAppBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              color: _controllerHomeScreen.index == 0
                  ? Color(0xFFE3262E)
                  : Colors.black54,
              onPressed: () {
                _controllerHomeScreen.setIndex(0);
              },
              icon: Icon(Icons.home_filled)),
          Observer(
            builder: (_) => IconButton(
                color: _controllerHomeScreen.index == 1
                    ? Color(0xFFE3262E)
                    : Colors.black54,
                onPressed: () {
                  _controllerHomeScreen.setIndex(1);
                },
                icon: Icon(Icons.monetization_on_outlined)),
          ),
          IconButton(
              color: _controllerHomeScreen.index == 2
                  ? Color(0xFFE3262E)
                  : Colors.black54,
              onPressed: () {
                _controllerHomeScreen.setIndex(2);
              },
              icon: Icon(Icons.person_outline)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Observer(
          builder: (_) => _pages[_controllerHomeScreen.index],
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Observer(builder: (_) => _bottomAppBar()));
  }
}
