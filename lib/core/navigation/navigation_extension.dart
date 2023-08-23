import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/navigation/navigator.dart';

extension BuildContextExtension on BuildContext {
  T get<T extends Object>() => read<T>();

  void push(String route) => get<MyNavigator>().push(route);
  void replace(String route) => get<MyNavigator>().replace(route);
  void replaceAll(String route) => get<MyNavigator>().replaceAll(route);
  void back<T extends Object?>([T? result]) => get<MyNavigator>().back(result);
}
