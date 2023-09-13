import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/exceptions/custom_exception.dart';
import 'package:collection_conductor/src/domain/usecases/get_collection_usecase/get_user_collection_usecase.dart';
import 'package:collection_conductor/src/domain/usecases/save_collection_usecase/save_user_collection_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_collection_state.dart';
part 'user_collection_event.dart';
part 'user_collection_bloc.freezed.dart';

class UserCollectionBloc
    extends Bloc<UserCollectionEvent, UserCollectionState> {
  final SaveUserCollectionUsecase _saveUserCollectionUsecase;
  final GetUserCollectionUsecase _getUserCollectionUsecase;

  UserCollectionBloc({
    required SaveUserCollectionUsecase saveUserCollectionUsecase,
    required GetUserCollectionUsecase getUserCollectionUsecase,
  })  : _getUserCollectionUsecase = getUserCollectionUsecase,
        _saveUserCollectionUsecase = saveUserCollectionUsecase,
        super(const UserCollectionState.initial()) {
    on<_GetUserCollection>(_getUserCollection);
    on<_RestartState>(_restartState);
    on<_UpdateUserCollection>(_updateUserCollection);
  }

  FutureOr<void> _restartState(
    _RestartState event,
    Emitter<UserCollectionState> emit,
  ) {
    emit(const UserCollectionState.initial());
  }

  FutureOr<void> _getUserCollection(
    _GetUserCollection event,
    Emitter<UserCollectionState> emit,
  ) async {
    emit(const UserCollectionState.loading());
    final response = await _getUserCollectionUsecase.call(
      userId: event.userId,
      updateId: event.updateId,
    );

    response.fold(
      (UserCollection collection) {
        emit(UserCollectionState.withData(userCollection: collection));
      },
      (CustomException failure) {
        emit(const UserCollectionState.error());
      },
    );
  }

  FutureOr<void> _updateUserCollection(
    _UpdateUserCollection event,
    Emitter<UserCollectionState> emit,
  ) async {
    emit(const UserCollectionState.loading());
    final response = await _saveUserCollectionUsecase.call(
      userId: event.userId,
      collection: event.collection,
    );

    response.onFailure(
      (CustomException failure) {
        emit(const UserCollectionState.error());
      },
    );
  }
}
