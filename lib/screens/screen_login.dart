import 'package:cloneclaroapp/controllers/controller_login.dart';
import 'package:cloneclaroapp/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  ControllerLogin _controllerLogin = ControllerLogin();
  late ReactionDisposer _reactionDisposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reactionDisposer =
        reaction((_) => _controllerLogin.usuarioLogado, (usuarioLogado) {
      if (usuarioLogado == true) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => ScreenHomePage()));
      }
    });
  }

  @override
  void dispose() {
    _reactionDisposer();
    super.dispose();
  }

  _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 60),
          child: Text(
            'Digite o\nnumero do seu celular',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Observer(
            builder: (_) => Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  onChanged: _controllerLogin.setCelular,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'DDD + Número do celular',
                    hintStyle: TextStyle(color: Colors.white38),
                    border: InputBorder.none,
                  ),
                ))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE3262E),
        body: _body(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: Observer(
            builder: (_) => _controllerLogin.login
                ? FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: _controllerLogin.carregando
                        ? CircularProgressIndicator(
                            color: Color(0xFFE3262E),
                          )
                        : Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFE3262E),
                          ),
                    onPressed: () {
                      _controllerLogin.logar();
                    },
                  )
                : Container()));
  }
}
