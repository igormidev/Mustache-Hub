import 'dart:ffi';

import 'package:flutter_test/flutter_test.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

void main() {
  late SugestionCubit cubit;

  setUp(() {
    cubit = SugestionCubit(
      tokenIdentifierFlatMapAdapter: TokenIdentifierFlatMapAdapter(),
      tokenIdentifierTextDisplayAdapter: TokenIdentifierTextDisplayAdapter(),
    );
  });

  test('sugestion cubit ...', () async {
    final parser = Parser(exempleText, null, '{{ }}');
    final cursorIndex = exempleText.indexOf('@');
    print(cursorIndex);
    final tokens = parser.getTokens();
    // print(exempleText.substring(202, 203));
    // print(exempleText.substring(203, 204));
    // print(exempleText.substring(204, 205));

    cubit.setSuggestionsFromCurrentCursorIndex(
      cursorIndex: cursorIndex,
      tokens: tokens,
      textPipes: [
        TextPipe(
          name: 'User Name',
          mustacheName: 'userName',
          description: 'The name of the user',
          isRequired: true,
        ),
        TextPipe(
          name: 'User age',
          mustacheName: 'userAge',
          description: 'The age of the user (a integer)',
          isRequired: true,
        ),
      ],
      booleanPipes: [],
      modelPipes: [
        ModelPipe(
          name: 'Life projects',
          mustacheName: 'lifeProjects',
          description: 'The dev project experiences of the user',
          textPipes: [
            TextPipe(
              name: 'Project name',
              mustacheName: 'projectName',
              description: 'The header name of the project. A title.',
              isRequired: true,
            ),
            TextPipe(
              name: 'Project duration',
              mustacheName: 'projectDuration',
              description: 'Enter the project duration here',
              isRequired: true,
            ),
            TextPipe(
              name: 'Project description',
              mustacheName: 'projectDescription',
              description: 'Enter the project description here',
              isRequired: true,
            ),
            TextPipe(
              // Is not used
              name: 'Project priority',
              mustacheName: 'projectPriority',
              description: 'Enter the project priority here',
              isRequired: true,
            ),
          ],
          booleanPipes: const [],
          modelPipes: [
            ModelPipe(
              name: 'Tecnologies used',
              mustacheName: 'tecnologiesUsed',
              description: 'The tecnologies used in the project',
              textPipes: [
                TextPipe(
                  name: 'Tecnology name',
                  mustacheName: 'tecnologytName',
                  description: 'The header name of the project. A title.',
                  isRequired: true,
                ),
              ],
              booleanPipes: [
                BooleanPipe(
                  name: 'Is crossplatform',
                  mustacheName: 'isCrossplatform',
                  description: 'Is the project crossplatform?',
                ),
              ],
              modelPipes: const [],
            ),
          ],
        ),
        ModelPipe(
          name: 'Certifications',
          mustacheName: 'certifications',
          description: 'The certifications of the user',
          textPipes: [
            TextPipe(
              name: 'Certifications name',
              mustacheName: 'certificationsName',
              description: 'The header name of the certifications. A title.',
              isRequired: true,
            ),
          ],
          booleanPipes: [
            BooleanPipe(
              name: 'Graduation was online?',
              mustacheName: 'graduationWasOnline',
              description: 'Use true if the graduation was online.',
            ),
          ],
          modelPipes: const [],
        ),
      ],
    );
  });
}

const exempleText = '''
Hello, my name is {{userName}}.
I am {{userAge}} years old.

In my hole life, i had worked in some projects.
A exemple is:
{{#lifeProjects}}
  {{projectName}} - {{projectDuration}}
  {{projectDescription}}
  @
{{/lifeProjects}}
''';
