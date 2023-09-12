// ignore_for_file: public_member_api_docs, sort_constructors_first

abstract class MustacheRepository {
  final int stars;
  final bool isPrivate;
  final List<String> readPermissionUserIds;
  final List<String> writePermissionUserIds;

  const MustacheRepository({
    required this.stars,
    required this.isPrivate,
    required this.readPermissionUserIds,
    required this.writePermissionUserIds,
  });
}
