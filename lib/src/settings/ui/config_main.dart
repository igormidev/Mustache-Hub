import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/extensions/theme.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/src/settings/ui/widgets/color_option.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ThemeCubit>();
    final isDark = bloc.state.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuration'),
      ),
      drawer: context.whenSizeOrNull(
        compactSize: const DashboardDrawer(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 16),
          InkWell(
            onTap: () {
              bloc.selectBrightness(
                isDark ? Brightness.light : Brightness.dark,
              );
            },
            child: Row(
              children: [
                Text(
                  'Mode:',
                  style: context.texts.titleLarge,
                ),
                const Spacer(),
                Icon(
                  isDark ? Icons.light_mode_outlined : Icons.light_mode,
                ),
                SizedBox(width: context.width * 0.02),
                IgnorePointer(
                  child: Switch(
                    value: isDark,
                    onChanged: (_) {},
                  ),
                ),
                SizedBox(width: context.width * 0.02),
                Icon(
                  isDark ? Icons.dark_mode_rounded : Icons.dark_mode_outlined,
                ),
              ],
            ),
          ),
          const Divider(height: 20),
          Text(
            'Tema do aplicativo:',
            style: context.texts.titleLarge,
          ),
          const SizedBox(height: 8),
          GridView.extent(
            shrinkWrap: true,
            maxCrossAxisExtent: 50,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: const <Color>[Colors.black, Colors.white]
                .followedBy(Colors.primaries.reversed)
                .followedBy(Colors.accents)
                .where(_removeBlackAndWhite)
                .map(ColorOption.fromColor)
                .toList(growable: false),
          ),
          const Divider(height: 20),
          const StoreHomeMain()
        ],
      ),
    );
  }

  bool _removeBlackAndWhite(Color color) =>
      color != Colors.black && color != Colors.white;
}

class StoreHomeMain extends StatelessWidget {
  const StoreHomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 20,
      children: [
        _ContainerShow('background', (s) => s.background),
        _ContainerShow.d('error', (s) => s.error),
        _ContainerShow('errorContainer', (s) => s.errorContainer),
        _ContainerShow('inversePrimary', (s) => s.inversePrimary),
        _ContainerShow.d('inverseSurface', (s) => s.inverseSurface),
        _ContainerShow.d('onBackground', (s) => s.onBackground),
        _ContainerShow('onError', (s) => s.onError),
        _ContainerShow.d('onErrorContainer', (s) => s.onErrorContainer),
        _ContainerShow('onInverseSurface', (s) => s.onInverseSurface),
        _ContainerShow('onPrimary', (s) => s.onPrimary),
        _ContainerShow.d('onPrimaryContainer', (s) => s.onPrimaryContainer),
        _ContainerShow('onSecondary', (s) => s.onSecondary),
        _ContainerShow.d(
          'onSecondaryContainer',
          (s) => s.onSecondaryContainer,
        ),
        _ContainerShow.d('onSurface', (s) => s.onSurface),
        _ContainerShow.d('onSurfaceVariant', (s) => s.onSurfaceVariant),
        _ContainerShow('onTertiary', (s) => s.onTertiary),
        _ContainerShow.d('onTertiaryContainer', (s) => s.onTertiaryContainer),
        _ContainerShow.d('outline', (s) => s.outline),
        _ContainerShow('outlineVariant', (s) => s.outlineVariant),
        _ContainerShow.d('primary', (s) => s.primary),
        _ContainerShow('primaryContainer', (s) => s.primaryContainer),
        _ContainerShow.d('scrim', (s) => s.scrim),
        _ContainerShow.d('secondary', (s) => s.secondary),
        _ContainerShow('secondaryContainer', (s) => s.secondaryContainer),
        _ContainerShow.d('shadow', (s) => s.shadow),
        _ContainerShow('surface', (s) => s.surface),
        _ContainerShow.d('surfaceTint', (s) => s.surfaceTint),
        _ContainerShow('surfaceVariant', (s) => s.surfaceVariant),
        _ContainerShow.d('tertiary', (s) => s.tertiary),
        _ContainerShow('tertiaryContainer', (s) => s.tertiaryContainer),
      ],
    );
  }
}

class _ContainerShow extends StatelessWidget {
  final String text;
  final Color Function(ColorScheme scheme) color;
  final bool isDark;
  const _ContainerShow(this.text, this.color) : isDark = false;
  const _ContainerShow.d(this.text, this.color) : isDark = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 170,
      color: color(Theme.of(context).colorScheme),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
