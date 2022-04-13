// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerLogin on ControllerLoginBase, Store {
  Computed<String>? _$numeroCelularComputed;

  @override
  String get numeroCelular =>
      (_$numeroCelularComputed ??= Computed<String>(() => super.numeroCelular,
              name: 'ControllerLoginBase.numeroCelular'))
          .value;
  Computed<bool>? _$loginComputed;

  @override
  bool get login => (_$loginComputed ??=
          Computed<bool>(() => super.login, name: 'ControllerLoginBase.login'))
      .value;

  final _$celularAtom = Atom(name: 'ControllerLoginBase.celular');

  @override
  String get celular {
    _$celularAtom.reportRead();
    return super.celular;
  }

  @override
  set celular(String value) {
    _$celularAtom.reportWrite(value, super.celular, () {
      super.celular = value;
    });
  }

  final _$carregandoAtom = Atom(name: 'ControllerLoginBase.carregando');

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  final _$usuarioLogadoAtom = Atom(name: 'ControllerLoginBase.usuarioLogado');

  @override
  bool get usuarioLogado {
    _$usuarioLogadoAtom.reportRead();
    return super.usuarioLogado;
  }

  @override
  set usuarioLogado(bool value) {
    _$usuarioLogadoAtom.reportWrite(value, super.usuarioLogado, () {
      super.usuarioLogado = value;
    });
  }

  final _$logarAsyncAction = AsyncAction('ControllerLoginBase.logar');

  @override
  Future<void> logar() {
    return _$logarAsyncAction.run(() => super.logar());
  }

  final _$ControllerLoginBaseActionController =
      ActionController(name: 'ControllerLoginBase');

  @override
  void setCelular(dynamic valor) {
    final _$actionInfo = _$ControllerLoginBaseActionController.startAction(
        name: 'ControllerLoginBase.setCelular');
    try {
      return super.setCelular(valor);
    } finally {
      _$ControllerLoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
celular: ${celular},
carregando: ${carregando},
usuarioLogado: ${usuarioLogado},
numeroCelular: ${numeroCelular},
login: ${login}
    ''';
  }
}
