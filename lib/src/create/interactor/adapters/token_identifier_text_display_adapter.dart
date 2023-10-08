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
    String response = '📦 Current variables options';
    response += showModelDisplayText(
      innerPaddingCount: 0,
      targetIdentifiers: targetIdentifiersName,
      prefix: '',
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
    required String prefix,
    required int innerPaddingCount,
    required ModelPipe pipe,
    List<String>? targetIdentifiers,
  }) {
    String response =
        '${''.padLeft(innerPaddingCount - 1, '  ')}$prefix${pipe.mustacheName}\n';

    pipe.textPipes.forEachMapper((value, isFirst, isLast, index) {
      final String preffix;

      if (isLast && pipe.booleanPipes.isEmpty && pipe.modelPipes.isEmpty) {
        preffix = '┗━━━📄 ';
      } else {
        preffix = '┣━━━📄 ';
      }

      String padding = ''.padLeft(innerPaddingCount, '  ');

      if (targetIdentifiers?.contains(value.mustacheName) ?? true) {
        response += '$padding$preffix${value.mustacheName}\n';
      }
    });

    pipe.booleanPipes.forEachMapper((value, isFirst, isLast, index) {
      final String preffix;

      if (isLast && pipe.modelPipes.isEmpty) {
        preffix = '┗━━━🔗 ';
      } else {
        preffix = '┣━━━🔗 ';
      }
      String padding = ''.padLeft(innerPaddingCount, '  ');

      if (targetIdentifiers?.contains(value.mustacheName) ?? true) {
        response += '$padding$preffix${value.mustacheName}\n';
      }
    });

    pipe.modelPipes.forEachMapper((value, isFirst, isLast, index) {
      final String preffix;

      if (isLast) {
        preffix = '┗━┳━📂 ';
      } else {
        if (value.textPipes.isEmpty &&
            value.booleanPipes.isEmpty &&
            value.modelPipes.isEmpty) {
          preffix = '┣━━━📂 ';
        } else {
          preffix = '┣━┳━📂 ';
        }
      }
      if (targetIdentifiers?.contains(value.mustacheName) ?? true) {
        response += showModelDisplayText(
          prefix: preffix,
          innerPaddingCount: innerPaddingCount + 1,
          pipe: value,
          targetIdentifiers: targetIdentifiers,
        );
      }
    });

    return response;
  }
}
