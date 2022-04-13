import 'package:cloneclaroapp/controllers/controller_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ScreenFreeCoins extends StatefulWidget {
  const ScreenFreeCoins({Key? key}) : super(key: key);

  @override
  State<ScreenFreeCoins> createState() => _ScreenFreeCoinsState();
}

class _ScreenFreeCoinsState extends State<ScreenFreeCoins> {
  ControllerHomeScreen _controllerHomeScreen = ControllerHomeScreen();

  _body() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Under Development...",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            LottieBuilder.network(
              "https://assets8.lottiefiles.com/packages/lf20_m9zragkd.json",
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE3262E),
      ),
      body: _body(),
    );
  }
}
