part of 'hub_collection_bloc.dart';

@freezed
class HubCollectionEvent with _$HubCollectionEvent {
  const factory HubCollectionEvent.getHubCollection({
    required String userId,
    required String updateId,
  }) = _GetHubCollection;

  const factory HubCollectionEvent.restartState() = _RestartState;

  const factory HubCollectionEvent.updateHubCollection({
    required String userId,
    required HubCollection collection,
  }) = _UpdateHubCollection;
}
