import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/package/mustache_package_data.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';

abstract class IPackagesRepository {
  /// Will return from the hub of the [Template] that contains
  /// [Template.id] equals to [id] and the [Template.version] equal to [version].
  AsyncAnswer<Template> getTemplateFromHub(
    String id,
    double version,
  );

  /// Will return from the local storage of the [Template] that contains
  /// [Template.id] equals to [id] and the [Template.version] equal to [version].
  AsyncAnswer<Template> restoreTemplate(
    String id,
    double version,
  );

  AsyncAnswer<MustachePackageData> storeTemplateData({
    required Template data,
  });

  AsyncAnswer<void> updateTemplateFromHub({
    required String name,
    required String description,
    required bool isPrivate,
    required Template template,
  });

  AsyncAnswer<void> addTemplate({
    required String packageId,
    required Template template,
  });
}
