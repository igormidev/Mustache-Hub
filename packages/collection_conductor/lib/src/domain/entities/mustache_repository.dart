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
