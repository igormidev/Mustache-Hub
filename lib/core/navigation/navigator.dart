import 'package:flutter_modular/flutter_modular.dart';

class MyNavigator {
  const MyNavigator();

  void replaceAll(String route) {
    Modular.to.navigate(route);
  }

  void replace(String route) {
    Modular.to.pushReplacementNamed(route);
  }

  void push(String route) {
    Modular.to.pushNamed(route);
  }

  void back<T extends Object?>([T? result]) {
    Modular.to.pop(result);
  }
}
