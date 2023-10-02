import 'package:equatable/equatable.dart';

class UserStats extends Equatable {
  final DateTime collectionUpdatedAt;
  final int userTierIndex;
  const UserStats({
    required this.collectionUpdatedAt,
    required this.userTierIndex,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [collectionUpdatedAt, userTierIndex];
}
