import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/account/interactor/repositories/i_image_repository.dart';
import 'package:mustachehub/src/account/interactor/resolvers/image_type_resolver.dart';
import 'package:mustachehub/src/account/interactor/state/image_selector_state.dart';

class ImageSelectorCubit extends Cubit<ImageSelectorState> {
  final IImageRepository _imageRepository;
  ImageSelectorCubit({
    required IImageRepository imageRepository,
  })  : _imageRepository = imageRepository,
        super(ImageSelectorState.withoutImage());

  void selectImage({
    required Uint8List image,
    required ImageType imageType,
  }) {
    emit(ImageSelectorState.imageSelectorUploadSuccess(
      imageType: imageType,
      image: image,
    ));
  }

  Future<void> uploadImage({
    required String userId,
  }) async {
    final image = state.mapOrNull(
      withImage: (v) => v.image,
      imageSelectorUploadSuccess: (v) => v.image,
      failure: (v) => v.image,
      loading: (v) => v.image,
    );
    final imageType = state.mapOrNull(
      withImage: (v) => v.imageType,
      imageSelectorUploadSuccess: (v) => v.imageType,
      failure: (v) => v.imageType,
      loading: (v) => v.imageType,
    );

    if (image == null || imageType == null) {
      emit(ImageSelectorState.failure(
        name: 'No image selected!',
        description: 'You need to select a image',
        imageType: imageType,
        image: image,
      ));
    } else {
      emit(ImageSelectorState.loading(
        imageType: imageType,
        image: image,
      ));
      await Future.delayed(
        const Duration(seconds: 2),
      );
      final response = await _imageRepository.uploadImage(
        image: image,
        userId: userId,
        imageType: imageType,
      );
      emit(response);
    }
  }

  void resetState() {
    emit(ImageSelectorState.withoutImage());
  }
}
