// ignore_for_file: use_build_context_synchronously

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/account/interactor/cubit/image_selector_cubit.dart';
import 'package:mustachehub/src/account/interactor/resolvers/image_type_resolver.dart';
import 'package:mustachehub/src/account/interactor/state/image_selector_state.dart';
import 'package:mustachehub/src/account/ui/lotties/picture_lottie_widget.dart';
import 'package:mustachehub/src/design_system/dialogs_api/implementations/show_error_dialog.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';

class AccountImageSelectPage extends StatelessWidget {
  const AccountImageSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.get<ImageSelectorCubit>();

    void onGetImage() async {
      try {
        final picker = ImagePicker();
        final XFile? xFile = await picker.pickImage(
          source: ImageSource.gallery,
        );
        if (xFile == null) return;
        final String imagePath = kIsWeb ? xFile.name.trim() : xFile.path.trim();

        final type = ImageTypeResolver.defineType(imagePath);
        if (type != null) {
          cubit.selectImage(
            image: await xFile.readAsBytes(),
            imageType: type,
          );
        } else {
          showWarningDialog(
            context,
            'Invalid image format',
            'The image needs to '
                'be ".jpg", "jpeg" or ".png" type.',
          );
        }
      } catch (error) {
        if (context.mounted) {
          showErrorDialog(
            context,
            'Error',
            'An error occurred when trying to access '
                'user images. Please double-check the '
                'app\'s access permissions.',
          );
        }
      }
    }

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        cubit.resetState();
      },
      child: BlocListener<ImageSelectorCubit, ImageSelectorState>(
        bloc: cubit,
        listener: (
          BuildContext context,
          ImageSelectorState state,
        ) {
          if (state is ImageSelectorStateFailure) {
            showErrorDialog(
              context,
              state.name,
              state.description,
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('User image'),
          ),
          body: Center(
            child: FittedBox(
              child: SizedBox(
                width: 360,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        BlocBuilder<ImageSelectorCubit, ImageSelectorState>(
                          bloc: cubit,
                          builder: (context, state) {
                            final image = state.mapOrNull(
                              withImage: (v) => v.image,
                              imageSelectorUploadSuccess: (v) => v.image,
                              failure: (v) => v.image,
                              loading: (v) => v.image,
                            );

                            return PictureLottieWidget(
                              image: image,
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Choose the user image',
                          style: context.texts.titleLarge?.copyWith(
                            color: context.scheme.tertiary,
                          ),
                        ),
                        const SizedBox(height: 20),
                        BlocBuilder<ImageSelectorCubit, ImageSelectorState>(
                          bloc: cubit,
                          builder: (context, state) {
                            final image = state.mapOrNull(
                              withImage: (v) => v.image,
                              imageSelectorUploadSuccess: (v) => v.image,
                              failure: (v) => v.image,
                              loading: (v) => v.image,
                            );
                            final hasValue = image != null;

                            final isLoading =
                                state is ImageSelectorStateLoading;

                            return ElevatedButton.icon(
                              onPressed: hasValue
                                  ? () async {
                                      if (isLoading) return;

                                      final userId = context.user?.id;
                                      if (userId == null) return;

                                      await cubit.uploadImage(
                                        userId: userId,
                                      );
                                      final currState = context
                                          .get<ImageSelectorCubit>()
                                          .state;
                                      if (currState
                                          is! ImageSelectorStateFailure) {
                                        Navigator.pop(context);
                                        await context
                                            .get<UserCubit>()
                                            .getUser();
                                      }
                                    }
                                  : onGetImage,
                              icon: isLoading
                                  ? const CircularProgressIndicator.adaptive()
                                  : Icon(
                                      hasValue
                                          ? Icons.save
                                          : Icons.photo_library,
                                    ),
                              label: Text(
                                hasValue
                                    ? 'Save selected image'
                                    : 'Select from galery',
                              ),
                            );
                          },
                        ),
                        BlocBuilder<ImageSelectorCubit, ImageSelectorState>(
                          bloc: cubit,
                          builder: (context, state) {
                            final image = state.mapOrNull(
                              withImage: (v) => v.image,
                              imageSelectorUploadSuccess: (v) => v.image,
                              failure: (v) => v.image,
                              loading: (v) => v.image,
                            );
                            if (image == null) {
                              return const SizedBox(height: 75);
                            }

                            return SizedBox(
                              height: 75,
                              child: Column(
                                children: [
                                  const SizedBox(height: 16),
                                  const Row(
                                    children: [
                                      SizedBox(width: 80),
                                      Expanded(child: Divider()),
                                      SizedBox(width: 16),
                                      Text('Or'),
                                      SizedBox(width: 16),
                                      Expanded(child: Divider()),
                                      SizedBox(width: 80),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  IgnorePointer(
                                    ignoring:
                                        state is ImageSelectorStateLoading,
                                    child: TextButton.icon(
                                      onPressed: onGetImage,
                                      icon: Icon(
                                        Icons.photo_library,
                                        color: context.scheme.outline,
                                      ),
                                      label: Text(
                                        'Select other image',
                                        style: TextStyle(
                                          color: context.scheme.outline,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
