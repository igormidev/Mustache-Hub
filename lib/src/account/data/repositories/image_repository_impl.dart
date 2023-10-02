import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mustachehub/src/account/interactor/repositories/i_image_repository.dart';
import 'package:mustachehub/src/account/interactor/resolvers/image_type_resolver.dart';
import 'package:mustachehub/src/account/interactor/state/image_selector_state.dart';

class ImageRepositoryImpl implements IImageRepository {
  final FirebaseStorage _storage;
  final FirebaseAuth _auth;
  ImageRepositoryImpl({
    FirebaseStorage? storage,
    FirebaseAuth? auth,
  })  : _storage = storage ?? FirebaseStorage.instance,
        _auth = auth ?? FirebaseAuth.instance;

  @override
  Future<ImageSelectorState> uploadImage({
    required String userId,
    required ImageType imageType,
    required Uint8List image,
  }) async {
    try {
      final String path = 'userimages/$userId';

      try {
        final userImagesRef = _storage.ref(path);
        await userImagesRef.putData(
          image,
          SettableMetadata(contentType: imageType.contentType),
        );
        final fullPath = await userImagesRef.getDownloadURL();
        await _auth.currentUser?.updatePhotoURL(fullPath);
        return ImageSelectorState.imageSelectorUploadSuccess(
          image: image,
          imageType: imageType,
        );
      } catch (error) {
        return ImageSelectorState.failure(
          name: 'Error while uploading data',
          description: 'Probaly this is a invalid image type. '
              'Or even a big file. Try with a diferent image.',
          imageType: imageType,
          image: image,
        );
      }
    } catch (error) {
      return ImageSelectorState.failure(
        name: 'Error while setting user photo.',
        description: 'Something whent wrong while '
            'uploading the image. Contact suport.',
        image: image,
        imageType: imageType,
      );
    }
  }
}
