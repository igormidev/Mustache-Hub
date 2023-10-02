import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/initial_binding_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/states/initial_binding_state.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';
import 'package:image_network/image_network.dart';

class UserDisplayCircleAvatar extends StatelessWidget {
  final EdgeInsets? padding;
  final UserImageSize size;
  final double? height;
  final double? width;

  const UserDisplayCircleAvatar({
    super.key,
    this.padding,
    this.height,
    this.width,
    this.size = UserImageSize.normal,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: SizedBox.expand(
          child: CircleAvatar(
            child: Padding(
              padding: size == UserImageSize.small
                  ? EdgeInsets.zero
                  : const EdgeInsets.all(8),
              child: SizedBox.expand(
                child: BlocBuilder<InitialBindingCubit, InitialBindingState>(
                  bloc: context.get(),
                  builder: (context, state) {
                    if (state is! InitialBindingComplete) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }

                    return BlocBuilder<UserCubit, UserModelState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final user = state.user;
                        final displayImage = user?.urlDisplayImage;

                        if (size == UserImageSize.small) {
                          return user == null
                              ? const Icon(
                                  Icons.no_accounts,
                                  size: 36,
                                )
                              : displayImage == null
                                  ? const Icon(
                                      Icons.image_not_supported_outlined,
                                      size: 36,
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(120),
                                      child: FittedBox(
                                        child: ImageNetwork(
                                          image: displayImage,
                                          height: height ?? 300,
                                          width: width ?? 300,
                                          fitAndroidIos: BoxFit.cover,
                                          fitWeb: BoxFitWeb.cover,
                                          onLoading:
                                              const CircularProgressIndicator
                                                  .adaptive(),
                                        ),
                                      ),
                                    );
                        }

                        return CircleAvatar(
                          child: user == null
                              ? const _NormalSizeImageText(
                                  Icons.no_accounts,
                                  'Not logged in',
                                )
                              : displayImage == null
                                  ? const _NormalSizeImageText(
                                      Icons.image_not_supported_outlined,
                                      'No image',
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(120),
                                      child: FittedBox(
                                        child: ImageNetwork(
                                          image: displayImage,
                                          height: height ?? 140,
                                          width: width ?? 140,
                                          fitAndroidIos: BoxFit.cover,
                                          fitWeb: BoxFitWeb.cover,
                                          onLoading:
                                              const CircularProgressIndicator
                                                  .adaptive(),
                                        ),
                                      ),
                                    ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NormalSizeImageText extends StatelessWidget {
  final IconData iconData;
  final String text;
  const _NormalSizeImageText(this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 45,
          ),
          const SizedBox(height: 4),
          Text(text),
        ],
      ),
    );
  }
}

enum UserImageSize {
  small,
  normal;
}
