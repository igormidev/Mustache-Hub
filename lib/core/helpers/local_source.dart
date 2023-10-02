import 'package:hive/hive.dart';

abstract class ILocalSource {
  Future<void> addMapToRoute({
    required String baseRoute,
    required String address,
    required Map<String, dynamic> map,
  });

  Future<Map<String, dynamic>?> getMapFromRoute({
    required String baseRoute,
    required String address,
  });
}

class ImplLocalSource implements ILocalSource {
  @override
  Future<void> addMapToRoute({
    required String baseRoute,
    required String address,
    required Map<String, dynamic> map,
  }) async {
    final collection = await BoxCollection.open(baseRoute, {baseRoute});

    final box = await collection.openBox<Map<String, dynamic>>(baseRoute);
    await box.put(address, map);
    collection.close();
  }

  @override
  Future<Map<String, dynamic>?> getMapFromRoute({
    required String baseRoute,
    required String address,
  }) async {
    final collection = await BoxCollection.open(baseRoute, {baseRoute});

    final box = await collection.openBox<Map<String, dynamic>>(baseRoute);
    collection.close();
    return await box.get(address);
  }
}
