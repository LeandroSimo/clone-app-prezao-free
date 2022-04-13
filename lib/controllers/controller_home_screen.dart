import 'package:mobx/mobx.dart';
part 'controller_home_screen.g.dart';

class ControllerHomeScreen = ControllerHomeScreenBase
    with _$ControllerHomeScreen;

abstract class ControllerHomeScreenBase with Store {
  @observable
  int index = 0;
  @observable
  int coins = 0;
  @observable
  double percent = 0.0;

  @computed
  int get valueIndex => index;
  @computed
  int get valueCoins => coins;
  @computed
  double get valuePercent => percent;

  @action
  void setIndex(value) => index = value;
  @action
  void setCoins(value) => coins = value;
  @action
  void setPercent(value) => percent = value;
}
