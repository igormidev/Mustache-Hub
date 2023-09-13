part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionState with _$InternetConnectionState {
  const factory InternetConnectionState.loadInProgress() = _LoadInProgress;
  const factory InternetConnectionState.withConnection() = _WithConnection;
  const factory InternetConnectionState.withoutConnectin() = _WithoutConnection;
}
