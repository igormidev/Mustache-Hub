import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';

class MultiBlocBuilder2<B1 extends StateStreamable<S1>, S1,
    B2 extends StateStreamable<S2>, S2> extends StatelessWidget {
  final Widget Function(BuildContext context, S1 s1, S2 s2)? _normalBuilder;
  final Widget Function(BuildContext context, B1 b1, S1 s1, S2 s2)?
      _withBloc1Builder;
  final Widget Function(BuildContext context, B1 b1, S1 s1, B2 b2, S2 s2)?
      _withBuilders;

  const MultiBlocBuilder2.onlyStates({
    super.key,
    required Widget Function(BuildContext context, S1 s1, S2 s2) builder,
  })  : _normalBuilder = builder,
        _withBloc1Builder = null,
        _withBuilders = null;

  const MultiBlocBuilder2.withBloc1({
    super.key,
    required Widget Function(BuildContext context, B1 b1, S1 s1, S2 s2) builder,
  })  : _normalBuilder = null,
        _withBloc1Builder = builder,
        _withBuilders = null;

  const MultiBlocBuilder2.withBlocs({
    super.key,
    required Widget Function(BuildContext context, B1 b1, S1 s1, B2 b2, S2 s2)
        builder,
  })  : _normalBuilder = null,
        _withBloc1Builder = null,
        _withBuilders = builder;

  @override
  Widget build(BuildContext context) {
    final bloc1 = context.get<B1>();
    final bloc2 = context.get<B2>();
    return BlocBuilder<B1, S1>(
      bloc: bloc1,
      builder: (context, state1) {
        return BlocBuilder<B2, S2>(
          bloc: bloc2,
          builder: (context, state2) {
            return _normalBuilder?.call(context, state1, state2) ??
                _withBloc1Builder?.call(context, bloc1, state1, state2) ??
                _withBuilders?.call(context, bloc1, state1, bloc2, state2) ??
                SizedBox.fromSize();
          },
        );
      },
    );
  }
}

class MultiBlocBuilder3<
    B1 extends StateStreamable<S1>,
    S1,
    B2 extends StateStreamable<S2>,
    S2,
    B3 extends StateStreamable<S3>,
    S3> extends StatelessWidget {
  final Widget Function(BuildContext context, S1 s1, S2 s2, S3 s3)?
      _normalBuilder;
  final Widget Function(BuildContext context, B1 b1, S1 s1, S2 s2, S3 s3)?
      _withBloc1Builder;
  final Widget Function(
          BuildContext context, B1 b1, S1 s1, B2 b2, S2 s2, S3 s3)?
      _withBloc1And2Builder;
  final Widget Function(
          BuildContext context, B1 b1, S1 s1, B2 b2, S2 s2, B3 b3, S3 s3)?
      _withBuilders;

  const MultiBlocBuilder3.onlyStates({
    super.key,
    required Widget Function(BuildContext context, S1 s1, S2 s2, S3 s3) builder,
  })  : _normalBuilder = builder,
        _withBloc1Builder = null,
        _withBloc1And2Builder = null,
        _withBuilders = null;

  const MultiBlocBuilder3.withBloc1({
    super.key,
    required Widget Function(BuildContext context, B1 b1, S1 s1, S2 s2, S3 s3)
        builder,
  })  : _normalBuilder = null,
        _withBloc1Builder = builder,
        _withBloc1And2Builder = null,
        _withBuilders = null;

  const MultiBlocBuilder3.withBloc1And2({
    super.key,
    required Widget Function(
            BuildContext context, B1 b1, S1 s1, B2 b2, S2 s2, S3 s3)
        builder,
  })  : _normalBuilder = null,
        _withBloc1Builder = null,
        _withBloc1And2Builder = builder,
        _withBuilders = null;

  const MultiBlocBuilder3.withBlocs({
    super.key,
    required Widget Function(
            BuildContext context, B1 b1, S1 s1, B2 b2, S2 s2, B3 b3, S3 s3)
        builder,
  })  : _normalBuilder = null,
        _withBloc1Builder = null,
        _withBloc1And2Builder = null,
        _withBuilders = builder;

  @override
  Widget build(BuildContext context) {
    final bloc1 = context.get<B1>();
    final bloc2 = context.get<B2>();
    final bloc3 = context.get<B3>();
    return BlocBuilder<B1, S1>(
      bloc: bloc1,
      builder: (context, state1) {
        return BlocBuilder<B2, S2>(
          bloc: bloc2,
          builder: (context, state2) {
            return BlocBuilder<B3, S3>(
              bloc: bloc3,
              builder: (context, state3) {
                return _normalBuilder?.call(context, state1, state2, state3) ??
                    _withBloc1Builder?.call(
                      context,
                      bloc1,
                      state1,
                      state2,
                      state3,
                    ) ??
                    _withBloc1And2Builder?.call(
                      context,
                      bloc1,
                      state1,
                      bloc2,
                      state2,
                      state3,
                    ) ??
                    _withBuilders?.call(
                      context,
                      bloc1,
                      state1,
                      bloc2,
                      state2,
                      bloc3,
                      state3,
                    ) ??
                    SizedBox.fromSize();
              },
            );
          },
        );
      },
    );
  }
}
