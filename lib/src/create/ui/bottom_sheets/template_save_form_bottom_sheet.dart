import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/custom_bottom_sheet.dart';
import 'package:mustachehub/src/create/interactor/cubit/package_form_cubit.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_dropdown.dart';
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
            context: context, child: _TemplateSaveFormBottomSheet());
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
    final templateName = useTextEditingController();
    final templateDescription = useTextEditingController();
    PublishType selectedPublishType = PublishType.public;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Save template'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              final isValid = _formKey.currentState?.validate() == true;
              if (isValid == false) {
                final userBloc = context.user;
                if (userBloc == null) {
                  showNeedToLogInDialog(context);
                  return;
                }

                final packageInfo = PackageInfo(
                  isPrivate: selectedPublishType == PublishType.private,
                  ownerId: userBloc.id,
                  readPermissionIds: [],
                  availibleVersions: [],
                );
                final cubit = context.read<PackageFormCubit>();
                cubit.createPackage(
                  packageInfo: packageInfo,
                  template: const Template(
                    templateId: 'templateId',
                    name: 'name',
                    description: 'description',
                    versionName: 'versionName',
                    content: '',
                    expectedPayload: ExpectedPayload(
                      textPipes: [],
                      booleanPipes: [],
                      modelPipes: [],
                    ),
                  ),
                );
              }
            },
            tooltip: 'Confirm form and save template',
            icon: const Icon(Icons.save_rounded),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 16),
            const CustomHeader(
              headerTitle: 'Template info',
              headerSubtitle: 'A template needs to have some info to be '
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
            const SizedBox(height: 16),
            // const Divider(height: 16),
            ListTileDropdown<PublishType>(
              items: PublishType.values,
              initialValue: PublishType.public,
              onChanged: (choosedValue) {
                if (choosedValue == null) return;
                selectedPublishType = choosedValue;
              },
              title: 'Publish/Visibility type:',
              tooltip:
                  'In both case, the template will be uploaded to the mustache\n'
                  'hub. But if it is private, only you will be able to find, see and use it.\n'
                  'If it is public, anyone can find you template by searching for it or for your profile.',
              itemBuilder: (item) {
                return Text(item.name);
              },
            ),
            const SizedBox(height: 16),
            const VersionSelectionSection(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

enum PublishType {
  private,
  public;
}

class VersionSelectionSection extends HookWidget {
  const VersionSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final majorVersion = useState(1);
    final minorVersion = useState(0);
    final patchVersion = useState(0);
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
                  'Current version: ${majorVersion.value}.${minorVersion.value}.${patchVersion.value}',
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
              initialValue: 1,
              version: majorVersion,
            ),
            const SizedBox(width: 8),
            CounterVersion(
              title: 'Minor version',
              initialValue: 1,
              version: minorVersion,
            ),
            const SizedBox(width: 8),
            CounterVersion(
              title: 'Patch version',
              initialValue: 1,
              version: patchVersion,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

class CounterVersion extends StatelessWidget {
  final String title;
  final int initialValue;
  final ValueNotifier<int> version;
  const CounterVersion({
    super.key,
    required this.title,
    required this.initialValue,
    required this.version,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const SizedBox(height: 2),
        Card(
          color: Theme.of(context).colorScheme.tertiaryContainer,
          // color: context.scheme.inversePrimary,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 4),
              IconButton(
                onPressed: () {
                  if (version.value > 0) {
                    version.value--;
                  }
                },
                icon: const Icon(Icons.remove_rounded),
              ),
              AnimatedFlipCounter(
                duration: const Duration(milliseconds: 500),
                value: version.value, // pass in a value like 2014
              ),
              IconButton(
                onPressed: () => version.value++,
                icon: const Icon(Icons.add_rounded),
              ),
              const SizedBox(width: 4),
            ],
          ),
        ),
      ],
    );
  }
}
