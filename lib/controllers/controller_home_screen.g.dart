// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_home_screen.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerHomeScreen on ControllerHomeScreenBase, Store {
  Computed<int>? _$valueIndexComputed;

  @override
  int get valueIndex =>
      (_$valueIndexComputed ??= Computed<int>(() => super.valueIndex,
              name: 'ControllerHomeScreenBase.valueIndex'))
          .value;
  Computed<int>? _$valueCoinsComputed;

  @override
  int get valueCoins =>
      (_$valueCoinsComputed ??= Computed<int>(() => super.valueCoins,
              name: 'ControllerHomeScreenBase.valueCoins'))
          .value;
  Computed<double>? _$valuePercentComputed;

  @override
  double get valuePercent =>
      (_$valuePercentComputed ??= Computed<double>(() => super.valuePercent,
              name: 'ControllerHomeScreenBase.valuePercent'))
          .value;

  final _$indexAtom = Atom(name: 'ControllerHomeScreenBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$coinsAtom = Atom(name: 'ControllerHomeScreenBase.coins');

  @override
  int get coins {
    _$coinsAtom.reportRead();
    return super.coins;
  }

  @override
  set coins(int value) {
    _$coinsAtom.reportWrite(value, super.coins, () {
      super.coins = value;
    });
  }

  final _$percentAtom = Atom(name: 'ControllerHomeScreenBase.percent');

  @override
  double get percent {
    _$percentAtom.reportRead();
    return super.percent;
  }

  @override
  set percent(double value) {
    _$percentAtom.reportWrite(value, super.percent, () {
      super.percent = value;
    });
  }

  final _$ControllerHomeScreenBaseActionController =
      ActionController(name: 'ControllerHomeScreenBase');

  @override
  void setIndex(dynamic value) {
    final _$actionInfo = _$ControllerHomeScreenBaseActionController.startAction(
        name: 'ControllerHomeScreenBase.setIndex');
    try {
      return super.setIndex(value);
    } finally {
      _$ControllerHomeScreenBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCoins(dynamic value) {
    final _$actionInfo = _$ControllerHomeScreenBaseActionController.startAction(
        name: 'ControllerHomeScreenBase.setCoins');
    try {
      return super.setCoins(value);
    } finally {
      _$ControllerHomeScreenBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPercent(dynamic value) {
    final _$actionInfo = _$ControllerHomeScreenBaseActionController.startAction(
        name: 'ControllerHomeScreenBase.setPercent');
    try {
      return super.setPercent(value);
    } finally {
      _$ControllerHomeScreenBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
coins: ${coins},
percent: ${percent},
valueIndex: ${valueIndex},
valueCoins: ${valueCoins},
valuePercent: ${valuePercent}
    ''';
  }
}
