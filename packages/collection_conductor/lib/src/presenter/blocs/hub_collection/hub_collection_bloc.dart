import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/exceptions/custom_exception.dart';
import 'package:collection_conductor/src/domain/usecases/get_collection_usecase/get_hub_collection_usecase.dart';
import 'package:collection_conductor/src/domain/usecases/save_collection_usecase/save_hub_collection_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hub_collection_state.dart';
part 'hub_collection_event.dart';
part 'hub_collection_bloc.freezed.dart';

class HubCollectionBloc extends Bloc<HubCollectionEvent, HubCollectionState> {
  final SaveHubCollectionUsecase _saveHubCollectionUsecase;
  final GetHubCollectionUsecase _getHubCollectionUsecase;

  HubCollectionBloc({
    required SaveHubCollectionUsecase saveHubCollectionUsecase,
    required GetHubCollectionUsecase getHubCollectionUsecase,
  })  : _getHubCollectionUsecase = getHubCollectionUsecase,
        _saveHubCollectionUsecase = saveHubCollectionUsecase,
        super(const HubCollectionState.initial()) {
    on<_GetHubCollection>(_getHubCollection);
    on<_RestartState>(_restartState);
    on<_UpdateHubCollection>(_updateHubCollection);
  }

  FutureOr<void> _restartState(
    _RestartState event,
    Emitter<HubCollectionState> emit,
  ) {
    emit(const HubCollectionState.initial());
  }

  FutureOr<void> _getHubCollection(
    _GetHubCollection event,
    Emitter<HubCollectionState> emit,
  ) async {
    emit(const HubCollectionState.loading());
    final response = await _getHubCollectionUsecase.call(
      userId: event.userId,
    );

    response.fold(
      (HubCollection collection) {
        emit(HubCollectionState.withData(hubCollection: collection));
      },
      (CustomException failure) {
        emit(const HubCollectionState.error());
      },
    );
  }

  FutureOr<void> _updateHubCollection(
    _UpdateHubCollection event,
    Emitter<HubCollectionState> emit,
  ) async {
    emit(const HubCollectionState.loading());
    final response = await _saveHubCollectionUsecase.call(
      userId: event.userId,
      collection: event.collection,
    );

    response.onFailure(
      (CustomException failure) {
        emit(const HubCollectionState.error());
      },
    );
  }
}
