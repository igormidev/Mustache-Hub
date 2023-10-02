import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/src/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/src/settings/interactor/state/theme_state.dart';

class ColorOption extends StatelessWidget {
  const ColorOption({
    super.key,
    required this.color,
  });

  factory ColorOption.fromColor(Color color) => ColorOption(color: color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ThemeCubit>();
    final isSelected = bloc.state.color == color;

    return InkWell(
      onTap: () {
        bloc.selectColor(color);
      },
      child: SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isSelected)
              CircleAvatar(
                backgroundColor: context.scheme.inverseSurface,
                radius: 20,
              ),
            CircleAvatar(
              backgroundColor: color,
              radius: isSelected ? 16 : 20,
            ),
            if (isSelected)
              Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: context.scheme.inverseSurface,
                  child: Icon(
                    Icons.check,
                    color: context.scheme.surface,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
