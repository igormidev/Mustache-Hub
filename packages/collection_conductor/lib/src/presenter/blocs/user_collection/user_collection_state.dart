part of 'user_collection_bloc.dart';

@freezed
class UserCollectionState with _$UserCollectionState {
  const factory UserCollectionState.initial() = _Initial;
  const factory UserCollectionState.loading() = _Loading;
  const factory UserCollectionState.error() = _Error;
  const factory UserCollectionState.withData({
    required UserCollection userCollection,
  }) = _WithData;
}
