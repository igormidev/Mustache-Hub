import 'package:dartz/dartz.dart';

extension EitherExtension<L, R> on Either<L, R> {
  R get asRightResult => (this as Right<L, R>).value;
  L get asLeftResult => (this as Left<L, R>).value;

  Either<L, T> asLeft<T>() => left(asLeftResult);
  Either<T, R> asRight<T>() => right(asRightResult);

  Either<L, T> castRight<T>(T Function(R value) castFunc) =>
      fold((l) => left(l), (r) => right(castFunc(r)));

  Either<L, T> castRightList<T>(T Function(R value) castFunc) =>
      fold((l) => left(l), (r) => right(castFunc(r)));
}

extension EitherCast<T> on T {
  Either<R, T> toRight<R>() => right(this);
  Either<T, R> toLeft<R>() => left(this);
}
