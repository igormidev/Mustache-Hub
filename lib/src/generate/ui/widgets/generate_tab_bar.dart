import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/generate/interactor/cubits/current_package_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/template_window_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/template_window_info.dart';
import 'package:mustachehub/src/generate/interactor/states/template_window_state.dart';

class GenerateTabBar extends StatelessWidget {
  const GenerateTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final windowBloc = context.get<TemplateWindowCubit>();
    final currentPackageBloc = context.get<CurrentPackageCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocBuilder<TemplateWindowCubit, TemplateWindowState>(
          bloc: windowBloc,
          builder: (context, state) {
            final List<TemplateWindowInfo>? windowInfos = state.mapOrNull(
              withTemplate: (v) => v.windowInfo,
              withTemplateAndNewBlackScreen: (v) => v.windowInfo,
            );

            if (windowInfos == null) return const SizedBox();

            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: windowInfos.map((windowInfo) {
                return FilledButton.tonalIcon(
                  icon: InkWell(
                    onTap: () {
                      windowBloc.removeTabWithId(windowInfo.windowId);
                    },
                    child: const Icon(Icons.delete),
                  ),
                  onPressed: () {
                    currentPackageBloc.getPackage(
                      packageId: windowInfo.templateId,
                      packageVersion: windowInfo.templateVersionName,
                    );
                  },
                  label: const Text('Tab 2'),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
