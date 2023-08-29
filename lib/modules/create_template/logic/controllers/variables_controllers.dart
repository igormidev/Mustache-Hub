import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

class VariablesController extends Disposable {
  final StreamController<Pipe> pipeModel = StreamController();

  @override
  void dispose() {}
}
