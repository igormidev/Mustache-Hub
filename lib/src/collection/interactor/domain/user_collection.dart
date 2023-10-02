import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';

class UserCollection {
  final List<PackageInfo> itens;
  final List<UserCollection> folders;

  const UserCollection({
    required this.itens,
    required this.folders,
  });
}
