import 'package:result_dart/result_dart.dart';

extension ResultExtension<S extends Object, F extends Object> on Result<S, F> {
  Result<T, F> asError<T extends Object>() => Failure(exceptionOrNull()!);
  Result<S, T> asSucess<T extends Object>() => Success(getOrNull()!);

  S get asSucessResult => getOrNull()!;
  F get asFailureResult => exceptionOrNull()!;
}
