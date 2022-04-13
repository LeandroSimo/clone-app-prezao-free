import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  _body() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Under Development...",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          LottieBuilder.network(
            "https://assets8.lottiefiles.com/packages/lf20_3rwasyjy.json",
          ),
        ],
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
