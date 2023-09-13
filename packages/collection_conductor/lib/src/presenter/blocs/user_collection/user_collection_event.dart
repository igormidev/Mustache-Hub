part of 'user_collection_bloc.dart';

@freezed
class UserCollectionEvent with _$UserCollectionEvent {
  const factory UserCollectionEvent.getUserCollection({
    required String userId,
    required String updateId,
  }) = _GetUserCollection;

  const factory UserCollectionEvent.restartState() = _RestartState;

  const factory UserCollectionEvent.updateUserCollection({
    required String userId,
    required UserCollection collection,
  }) = _UpdateUserCollection;
}
