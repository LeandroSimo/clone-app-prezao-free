import 'package:cloneclaroapp/controllers/controller_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'screen_free_coins.dart';

class ScreenContentHome extends StatefulWidget {
  const ScreenContentHome({Key? key}) : super(key: key);

  @override
  State<ScreenContentHome> createState() => _ScreenContentHomeState();
}

class _ScreenContentHomeState extends State<ScreenContentHome> {
  ControllerHomeScreen _controllerHomeScreen = ControllerHomeScreen();

  final _pages = [
    ScreenContentHome(),
    ScreenFreeCoins(),
  ];
  _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SEU TOTAL PARA CURTIR'),
                Text(
                  _controllerHomeScreen.coins.toString().length <= 3
                      ? '0' + _controllerHomeScreen.coins.toString()
                      : _controllerHomeScreen.coins.toString(),
                  style: TextStyle(color: Color(0xFFE3262E), fontSize: 100),
                ),
                Text('FREE COINS'),
                Observer(
                    builder: (_) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 40),
                                        primary: Color(0xFFE3262E)),
                                    onPressed: () {
                                      _controllerHomeScreen.coins += 100;
                                    },
                                    child: Text('Add 100\nMB Free')),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 40),
                                        primary: Color(0xFFE3262E)),
                                    onPressed: () {
                                      _controllerHomeScreen.coins += 200;
                                    },
                                    child: Text('Add 200\nMB Free')),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 40),
                                        primary: Color(0xFFE3262E)),
                                    onPressed: () {
                                      _controllerHomeScreen.coins += 300;
                                    },
                                    child: Text('Add 300\nMB Free')),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 40),
                                        primary: Color(0xFFE3262E)),
                                    onPressed: () {
                                      _controllerHomeScreen.coins += 400;
                                    },
                                    child: Text('Add 400\nMB Free')),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(110, 40),
                                        primary: Color(0xFFE3262E)),
                                    onPressed: () {
                                      _controllerHomeScreen.coins += 500;
                                    },
                                    child: Text('Add 500\nMB Free')),
                              ),
                            ],
                          ),
                        )),
              ],
            ),
          ),
          Divider(
            height: 2,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Créditos disponíveis em (dia) do (mês)',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 40),
                    child: LinearPercentIndicator(
                      animation: true,
                      barRadius: Radius.zero,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFFE3262E),
                      animationDuration: 2000,
                      percent: _controllerHomeScreen.coins > 0
                          ? _controllerHomeScreen.percent = 1.0
                          : _controllerHomeScreen.percent = 0,
                      lineHeight: 7,
                      leading: Text('Ligações'),
                      trailing: Text(_controllerHomeScreen.coins > 0 &&
                              _controllerHomeScreen.coins < 500
                          ? '1 dia(s)'
                          : _controllerHomeScreen.coins >= 500
                              ? '5 dia(s)'
                              : '0 dia(s)'),
                    )),
                Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: LinearPercentIndicator(
                      animation: true,
                      barRadius: Radius.zero,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFFE3262E),
                      animationDuration: 2000,
                      percent: _controllerHomeScreen.coins > 0
                          ? _controllerHomeScreen.percent = 1.0
                          : _controllerHomeScreen.percent = 0,
                      lineHeight: 7,
                      leading: Text('Internet'),
                      trailing: Text('${_controllerHomeScreen.coins} MB'),
                      padding: EdgeInsets.only(left: 20, right: 10),
                    )),
                Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: LinearPercentIndicator(
                      animation: true,
                      barRadius: Radius.zero,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFFE3262E),
                      animationDuration: 2000,
                      percent: _controllerHomeScreen.coins > 0
                          ? _controllerHomeScreen.percent = 1.0
                          : _controllerHomeScreen.percent = 0,
                      lineHeight: 7,
                      leading: Text('SMS'),
                      trailing: Text(_controllerHomeScreen.coins > 0 &&
                              _controllerHomeScreen.coins < 500
                          ? '1 dia(s)'
                          : _controllerHomeScreen.coins >= 500
                              ? '5 dia(s)'
                              : '0 dia(s)'),
                      padding: EdgeInsets.only(left: 40, right: 10),
                    )),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 12, top: 12),
                  child: Text(
                    'Resgate pacotes com Free Coins',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => _controllerHomeScreen.coins -= 100,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(top: 16, left: 22, right: 22),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFE3262E),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.four_g_plus_mobiledata_sharp,
                              color: Colors.white,
                              size: 35,
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 1),
                                child: Text(
                                  'Pacote diario 1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                            Text('Receba 100\nMB + 1 dia de\nSMS e Voz',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _controllerHomeScreen.coins -= 200,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(top: 16, right: 22),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFE3262E),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.four_g_plus_mobiledata_sharp,
                              color: Colors.white,
                              size: 35,
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 1),
                                child: Text(
                                  'Pacote diario 2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                            Text('Receba 200\nMB + 1 dia de\nSMS e Voz',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _controllerHomeScreen.coins -= 500,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(top: 16, right: 22),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFE3262E),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.four_g_plus_mobiledata_sharp,
                              color: Colors.white,
                              size: 35,
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 1),
                                child: Text(
                                  'Combo 1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                            Text('Receba 500\nMB + 5 dia de\nSMS e Voz',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                heightFactor: 4,
                child: Text('PUBLICIDADE'),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Observer(
      builder: (_) => _controllerHomeScreen.index == 0
          ? _body()
          : _pages[_controllerHomeScreen.index],
    ));
  }
}
