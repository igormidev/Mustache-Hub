import 'dart:typed_data';
import 'package:mustachehub/src/account/interactor/resolvers/image_type_resolver.dart';
import 'package:mustachehub/src/account/interactor/state/image_selector_state.dart';

abstract class IImageRepository {
  Future<ImageSelectorState> uploadImage({
    required String userId,
    required ImageType imageType,
    required Uint8List image,
  });
}
