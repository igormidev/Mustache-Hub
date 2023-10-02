import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart' as anm;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';

class PictureLottieWidget extends HookWidget {
  final Uint8List? image;
  const PictureLottieWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    final canStartAnimating = useState(false);
    useEffect(() {
      Future.delayed(250.ms, () => canStartAnimating.value = true);
      return null;
    }, const []);

    return SizedBox(
      width: 220,
      height: 220,
      child: Visibility(
        visible: canStartAnimating.value,
        child: CircleAvatar(
          backgroundColor: context.scheme.secondaryContainer.withAlpha(130),
          child: image == null
              ? LottieBuilder.asset(
                  Lotties.picture,
                )
              : Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox.expand(
                    child: CircleAvatar(
                      backgroundImage: MemoryImage(image!),
                    ),
                  ),
                ).animate().fadeIn(duration: 700.milliseconds).scale(),
        ).animate().fadeIn(duration: 600.milliseconds),
      ),
    );
  }
}
