part of 'hub_collection_bloc.dart';

@freezed
class HubCollectionState with _$HubCollectionState {
  const factory HubCollectionState.initial() = _Initial;
  const factory HubCollectionState.loading() = _Loading;
  const factory HubCollectionState.error() = _Error;
  const factory HubCollectionState.withData({
    required HubCollection hubCollection,
  }) = _WithData;
}
