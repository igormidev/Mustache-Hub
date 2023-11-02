import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/custom_bottom_sheet.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/content_string_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/package_form_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/package_meta_data_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/version_cubit.dart';
import 'package:mustachehub/src/create/interactor/state/package_meta_data_state.dart';
import 'package:mustachehub/src/create/interactor/state/version_state.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/global_loading_cubit.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/is_loading_builder.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';
import 'package:mustachehub/src/design_system/dialogs_api/implementations/show_need_to_log_in_dialog.dart';
import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/template.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';

class IconSaveTemplate extends StatelessWidget {
  const IconSaveTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showCustomBottomSheet(
          context: context,
          child: _TemplateSaveFormBottomSheet(),
        );
      },
      tooltip: 'Save template',
      icon: const Icon(
        Icons.save_rounded,
      ),
    );
  }
}

class _TemplateSaveFormBottomSheet extends HookWidget with ValidatorsMixins {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _TemplateSaveFormBottomSheet();

  @override
  Widget build(BuildContext context) {
    final packageMetaData = context.get<PackageMetaDataCubit>().state;
    final templateName = useTextEditingController();
    final templateDescription = useTextEditingController();
    PublishType selectedPublishType = PublishType.public;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text('Save template'),
            SizedBox(
              width: 160,
              child: IsLoadingBuilder(
                loadingWidget: const LinearProgressIndicator(),
                child: SizedBox.fromSize(),
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              context.setGlobalLoadingToTrue();

              final isValid = _formKey.currentState?.validate() == true;
              if (isValid == false) {
                final userBloc = context.user;
                if (userBloc == null) {
                  showNeedToLogInDialog(context);
                  return;
                }

                final newVersion = context.get<VersionCubit>().state.newVersion;
                final majorVersion = newVersion.majorVersion;
                final minorVersion = newVersion.minorVersion;
                final patchVersion = newVersion.patchVersion;

                final packageInfo = PackageInfo(
                  isPrivate: selectedPublishType == PublishType.private,
                  ownerId: userBloc.id,
                  readPermissionIds: [],
                  availibleVersions: [],
                );

                final variables = context.get<VariablesCubit>().state;

                final packageCubit = context.get<PackageFormCubit>();

                final contentString = context.get<ContentStringCubit>().state;

                if (packageMetaData.isEditing) {
                  final String? packageId = packageMetaData.mapOrNull(
                    loadingPackageId: (v) => v.packageId,
                    withData: (v) => v.packageId,
                  );
                  if (packageId == null) return;

                  await Future.wait([
                    packageCubit.updatePackage(
                      packageId: packageId,
                      packageInfo: packageInfo,
                      template: Template(
                        templateId: 'templateId',
                        name: templateName.text,
                        description: templateDescription.text,
                        versionName:
                            '$majorVersion.$minorVersion.$patchVersion',
                        content: contentString.currentText,
                        expectedPayload: ExpectedPayload(
                          textPipes: variables.textPipes,
                          booleanPipes: variables.booleanPipes,
                          modelPipes: variables.modelPipes,
                        ),
                      ),
                    ),
                    Future.delayed(const Duration(milliseconds: 2500)),
                  ]);
                } else {
                  await Future.wait([
                    packageCubit.createPackage(
                      packageInfo: packageInfo,
                      template: Template(
                        templateId: 'templateId',
                        name: templateName.text,
                        description: templateDescription.text,
                        versionName: '1.0.0',
                        content: contentString.currentText,
                        expectedPayload: ExpectedPayload(
                          textPipes: variables.textPipes,
                          booleanPipes: variables.booleanPipes,
                          modelPipes: variables.modelPipes,
                        ),
                      ),
                    ),
                    Future.delayed(const Duration(milliseconds: 2500)),
                  ]);
                }

                if (context.mounted) context.setGlobalLoadingToFalse();
              }
            },
            tooltip: 'Confirm form and save template',
            icon: const IsLoadingBuilder(
              loadingWidget: CircularProgressIndicator.adaptive(),
              child: Icon(Icons.save_rounded),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocBuilder<GlobalLoadingCubit, bool>(
        bloc: context.get<GlobalLoadingCubit>(),
        builder: (context, isLoading) {
          return IgnorePointer(
            ignoring: isLoading,
            child: Stack(
              children: [
                Opacity(
                  opacity: isLoading ? 0.5 : 1,
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        const SizedBox(height: 16),
                        const CustomHeader(
                          headerTitle: 'Template info',
                          headerSubtitle:
                              'A template needs to have some info to be '
                              'publicated. Such as a name and a description.',
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: templateName,
                          decoration: const InputDecoration(
                            labelText: 'Template name',
                          ),
                          validator: isNotEmpty,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: templateDescription,
                          decoration: const InputDecoration(
                            labelText: 'Template description',
                          ),
                          textAlignVertical: TextAlignVertical.top,
                          textAlign: TextAlign.start,
                          minLines: 3,
                          maxLines: 10,
                          validator: isNotEmpty,
                        ),
                        // const SizedBox(height: 16),
                        // ListTileDropdown<PublishType>(
                        //   items: PublishType.values,
                        //   initialValue: PublishType.public,
                        //   onChanged: (choosedValue) {
                        //     if (choosedValue == null) return;
                        //     selectedPublishType = choosedValue;
                        //   },
                        //   title: 'Publish/Visibility type:',
                        //   tooltip:
                        //       'In both case, the template will be uploaded to the mustache\n'
                        //       'hub. But if it is private, only you will be able to find, see and use it.\n'
                        //       'If it is public, anyone can find you template by searching for it or for your profile.',
                        //   itemBuilder: (item) {
                        //     return Text(item.name);
                        //   },
                        // ),
                        const SizedBox(height: 16),
                        if (packageMetaData.isEditing)
                          const VersionSelectionSection(),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
                if (isLoading)
                  Center(
                    child: LottieBuilder.asset(Lotties.mustacheLoading),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

enum PublishType {
  private,
  public;
}

class VersionSelectionSection extends StatelessWidget {
  const VersionSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final majorVersion = useState(1);
    // final minorVersion = useState(0);
    // final patchVersion = useState(0);
    final versionBloc = context.get<VersionCubit>();
    return BlocBuilder<VersionCubit, VersionState>(
      bloc: versionBloc,
      builder: (context, state) {
        final majorVersion = state.newVersion.majorVersion;
        final minorVersion = state.newVersion.minorVersion;
        final patchVersion = state.newVersion.patchVersion;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Package version',
                      style: context.texts.labelLarge,
                    ),
                    Text(
                      'Current version: $majorVersion.$minorVersion.$patchVersion',
                      style: context.texts.labelMedium?.copyWith(
                        color: context.scheme.outline,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CounterVersion(
                  title: 'Major version',
                  version: majorVersion,
                  onPressed: () {
                    versionBloc.incrementMajorVersion();
                  },
                ),
                const SizedBox(width: 8),
                CounterVersion(
                  title: 'Minor version',
                  version: minorVersion,
                  onPressed: () {
                    versionBloc.incrementMinorVersion();
                  },
                ),
                const SizedBox(width: 8),
                CounterVersion(
                  title: 'Patch version',
                  version: patchVersion,
                  onPressed: () {
                    versionBloc.incrementPatchVersion();
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CounterVersion extends StatelessWidget {
  final String title;
  final int version;
  final void Function() onPressed;
  const CounterVersion({
    super.key,
    required this.title,
    required this.version,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96,
      child: Column(
        children: [
          Text(title),
          const SizedBox(height: 2),
          Card(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            // color: context.scheme.inversePrimary,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 16),
                AnimatedFlipCounter(
                  duration: const Duration(milliseconds: 500),
                  value: version,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Icons.add_rounded),
                ),
                const SizedBox(width: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
