import 'package:mustachehub/core/extensions/list_extensions.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class TokenIdentifierTextDisplayAdapter {
  /// # Example
  ///
  ///  📦 Current variables options</br>
  ///  ┣ 📂 core</br>
  ///  ┃ ┣ 📂 error</br>
  ///  ┃ ┃ ┣ 📄 Name</br>
  ///  ┃ ┃ ┗ 🔗 Is male</br>
  String toDisplayText({
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ModelPipe> modelPipes,
    List<String>? targetIdentifiersName,
  }) {
    String response = '📦 Current variables options\n';
    response += showModelDisplayText(
      innerPaddingCount: 0,
      targetIdentifiers: targetIdentifiersName,
      pipe: ModelPipe(
        name: '',
        mustacheName: '',
        description: '',
        textPipes: textPipes,
        booleanPipes: booleanPipes,
        modelPipes: modelPipes,
      ),
    );
    return response;
  }

  String showModelDisplayText({
    required int innerPaddingCount,
    required ModelPipe pipe,
    List<String>? targetIdentifiers,
  }) {
    String response =
        '${''.padLeft(innerPaddingCount - 1, '  ')}┣━━📂 ${pipe.mustacheName}\n';

    pipe.textPipes.forEachMapper((value, isFirst, isLast, index) {
      const String prefix = '┣━━📄 ';
      String padding = ''.padLeft(innerPaddingCount, '  ');

      if (targetIdentifiers?.contains(pipe.mustacheName) ?? true) {
        response += '$padding$prefix${pipe.mustacheName}\n';
      }
    });

    pipe.booleanPipes.forEachMapper((value, isFirst, isLast, index) {
      const preffix = '┣━━🔗 ';
      String padding = ''.padLeft(innerPaddingCount, '  ');

      if (targetIdentifiers?.contains(pipe.mustacheName) ?? true) {
        response += '$padding$preffix${pipe.mustacheName}\n';
      }
    });

    pipe.modelPipes.forEachMapper((value, isFirst, isLast, index) {
      if (targetIdentifiers?.contains(pipe.mustacheName) ?? true) {
        response += showModelDisplayText(
          innerPaddingCount: innerPaddingCount + 1,
          pipe: pipe,
          targetIdentifiers: targetIdentifiers,
        );
      }
    });

    return response;
  }
}
