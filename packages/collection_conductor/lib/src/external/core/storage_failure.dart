import 'package:collection_conductor/src/domain/exceptions/custom_exception.dart';

/// TODO(igor): Implement more specific errors
abstract class StorageFailure extends CustomException {
  const StorageFailure({
    required super.errorId,
  });
}

class StorageFailureCasting extends StorageFailure
    implements ContainsStackTrace {
  const StorageFailureCasting({
    required this.error,
    required this.stackTrace,
    required this.address,
  }) : super(errorId: 'castingFailure');

  @override
  final Object error;

  @override
  final StackTrace stackTrace;
  final String address;
}

class StorageFailureWhileWriting extends StorageFailure
    implements ContainsStackTrace {
  const StorageFailureWhileWriting({
    required this.error,
    required this.stackTrace,
    required this.address,
  }) : super(errorId: 'whileWritting');

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  final String address;
}

class StorageFailureWhileGettingValue extends StorageFailure
    implements ContainsStackTrace {
  const StorageFailureWhileGettingValue({
    required this.error,
    required this.stackTrace,
    required this.address,
  }) : super(errorId: 'whileGetting');

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  final String address;
}

class StorageFailureDeletingValue extends StorageFailure
    implements ContainsStackTrace {
  const StorageFailureDeletingValue({
    required this.error,
    required this.stackTrace,
    required this.address,
  }) : super(errorId: 'delettingVlaue');

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  final String? address;
}

class NoObjectInStorage extends StorageFailure {
  const NoObjectInStorage({
    required this.address,
  }) : super(errorId: 'noObjectInCache');

  final String? address;
}
