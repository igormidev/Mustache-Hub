abstract class CustomException implements Exception {
  const CustomException({required this.errorId});

  final String errorId;
}

abstract class ContainsStackTrace {
  const ContainsStackTrace({
    required this.error,
    required this.stackTrace,
  });

  final Object? error;
  final StackTrace? stackTrace;
}

class UnknownError extends CustomException implements ContainsStackTrace {
  const UnknownError({
    required this.error,
    required this.stackTrace,
  }) : super(errorId: 'UnknownError');

  @override
  final Object error;

  @override
  final StackTrace stackTrace;
}
