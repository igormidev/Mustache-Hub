import 'package:mustachehub/logic/entities/pipe.dart';

extension PipeMapExtension on Map<Pipe, dynamic> {
  Map<K, V> mapPipe<K, V>(
    MapEntry<K, V> Function(dynamic key, dynamic value) onPayload,
    MapEntry<K, V> Function(TextPipe text, dynamic value) onTextPipe,
    MapEntry<K, V> Function(BooleanPipe boolean, dynamic value) onBooleanPipe,
    MapEntry<K, V> Function(ModelPipe model, dynamic value) onModelPipe,
  ) {
    final Map<K, V> response = {};

    forEach((key, value) {
      if (key is TextPipe) {
        final e = onTextPipe(key, value);
        response.addAll({e.key: e.value});
      } else if (key is BooleanPipe) {
        final e = onBooleanPipe(key, value);
        response.addAll({e.key: e.value});
      } else if (key is ModelPipe) {
        final e = onModelPipe(key, value);
        response.addAll({e.key: e.value});
      } else {
        final e = onPayload(key, value);
        response.addAll({e.key: e.value});
      }
    });

    return response;
  }
}
