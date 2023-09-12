part of 'collection_bloc.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;
  const factory CollectionState.loadInProgress() = _LoadInProgress;
}