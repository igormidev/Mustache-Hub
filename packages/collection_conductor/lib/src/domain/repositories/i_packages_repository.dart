import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';

abstract class IPackagesRepository {
  /// Will return from the hub of the [Template] that contains
  /// [Template.id] equals to [id] and the [Template.version] equal to [version].
  AsyncAnswer<Template> getTemplateFromHub({
    required String packageId,
    required double version,
  });

  /// Will return from the local storage of the [Template] that contains
  /// [Template.id] equals to [id] and the [Template.version] equal to [version].
  AsyncAnswer<Template> restoreTemplate({
    required String packageId,
    required double version,
  });

  AsyncAnswer<VoidSucess> storeTemplateData({
    required String packageId,
    required Template data,
  });

  AsyncAnswer<VoidSucess> createTemplateInHub({
    required Template template,
  });

  AsyncAnswer<VoidSucess> addTemplate({
    required String packageId,
    required Template template,
  });
}
