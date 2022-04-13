import 'package:mobx/mobx.dart';
part 'controller_login.g.dart';

class ControllerLogin = ControllerLoginBase with _$ControllerLogin;

abstract class ControllerLoginBase with Store {
  @observable
  String celular = '';
  @observable
  bool carregando = false;
  @observable
  bool usuarioLogado = false;

  @computed
  String get numeroCelular => celular;
  @computed
  bool get login => celular.length == 11;
  @action
  void setCelular(valor) => celular = valor;
  @action
  Future<void> logar() async {
    carregando = true;

    await Future.delayed(Duration(seconds: 2));

    carregando = false;
    usuarioLogado = true;
  }
}
