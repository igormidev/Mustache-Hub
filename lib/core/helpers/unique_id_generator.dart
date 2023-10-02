import 'package:uuid/uuid.dart';

class UniqueIdGenerator {
  final Uuid _uuid;
  const UniqueIdGenerator() : _uuid = const Uuid();

  String getId() {
    return _uuid.v4().replaceAll('-', '');
  }
}
