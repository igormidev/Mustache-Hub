import 'package:flutter_test/flutter_test.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/create/interactor/state/sugestion_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';
import 'package:mustachex/mustachex.dart';

void main() {
  late SugestionCubit cubit;

  setUp(() {
    cubit = SugestionCubit(
      tokenIdentifierFlatMapAdapter: TokenIdentifierFlatMapAdapter(),
      tokenIdentifierTextDisplayAdapter: TokenIdentifierTextDisplayAdapter(),
    );
  });

  test('Should ', () async {
    final parser = Parser(exempleText, null, '{{ }}');
    final cursorIndex = exempleText.indexOf(target);
    final tokens = parser.getTokens();

    cubit.setFlatMap(
      textPipes: mockTestVariables,
      booleanPipes: [],
      modelPipes: mockMapVariables,
    );

    cubit.setSuggestionsFromCurrentCursorIndex(
      cursorIndex: cursorIndex,
      tokens: tokens,
      textPipes: mockTestVariables,
      booleanPipes: [],
      modelPipes: mockMapVariables,
    );

    expect(
      cubit.state,
      equals(
        SugestionState.withSugestionAndFlatMapCache(
          flatMap: expectedFlatMap,
          availibleVariablesString: expectedText,
          tokenIdentifiers: tokenIdentifiers,
        ),
      ),
    );
  });
}

const expectedText = '''📦 Current variables options
┣━━━📄 userName
┣━━━📄 userAge
┣━┳━📂 lifeProjects
┃ ┣━━━📄 projectName
┃ ┣━━━📄 projectDuration
┃ ┣━━━📄 projectDescription
┃ ┣━━━📄 projectPriority
┃ ┗━━━📂 tecnologiesUsed
┗━━━📂 certifications
''';

const target = '@';
const exempleText = '''
Hello, my name is {{userName}}.
I am {{userAge}} years old.

In my hole life, i had worked in some projects.
A exemple is:
{{#lifeProjects}}
  {{projectName}} - {{projectDuration}}
  {{projectDescription}}
  $target
{{/lifeProjects}}
''';

final tokenIdentifiers = {
  TokenIdentifier.text(name: 'userName'),
  TokenIdentifier.text(name: 'userAge'),
  TokenIdentifier.model(
      name: 'certifications',
      textsNames: ['certificationsName'],
      booleanNames: ['graduationWasOnline'],
      subModelsNames: []),
  TokenIdentifier.model(name: 'lifeProjects', textsNames: [
    'projectName',
    'projectDuration',
    'projectDescription',
    'projectPriority'
  ], booleanNames: [], subModelsNames: [
    'tecnologiesUsed'
  ]),
  TokenIdentifier.text(name: 'projectName'),
  TokenIdentifier.text(name: 'projectDuration'),
  TokenIdentifier.text(name: 'projectDescription'),
  TokenIdentifier.text(name: 'projectPriority'),
  TokenIdentifier.model(
    name: 'tecnologiesUsed',
    textsNames: ['tecnologytName'],
    booleanNames: ['isCrossplatform'],
    subModelsNames: [],
  )
};

final Map<String, TokenIdentifier> expectedFlatMap = {
  'userName': TokenIdentifier.text(name: 'userName'),
  'userAge': TokenIdentifier.text(name: 'userAge'),
  'lifeProjects': TokenIdentifier.model(
    name: 'lifeProjects',
    textsNames: [
      'projectName',
      'projectDuration',
      'projectDescription',
      'projectPriority'
    ],
    booleanNames: [],
    subModelsNames: ['tecnologiesUsed'],
  ),
  'projectName': TokenIdentifier.text(name: 'projectName'),
  'projectDuration': TokenIdentifier.text(name: 'projectDuration'),
  'projectDescription': TokenIdentifier.text(name: 'projectDescription'),
  'projectPriority': TokenIdentifier.text(name: 'projectPriority'),
  'tecnologiesUsed': TokenIdentifier.model(
    name: 'tecnologiesUsed',
    textsNames: ['tecnologytName'],
    booleanNames: ['isCrossplatform'],
    subModelsNames: [],
  ),
  'tecnologytName': TokenIdentifier.text(name: 'tecnologytName'),
  'isCrossplatform': TokenIdentifier.boolean(name: 'isCrossplatform'),
  'certifications': TokenIdentifier.model(
    name: 'certifications',
    textsNames: ['certificationsName'],
    booleanNames: ['graduationWasOnline'],
    subModelsNames: [],
  ),
  'certificationsName': TokenIdentifier.text(name: 'certificationsName'),
  'graduationWasOnline': TokenIdentifier.boolean(name: 'graduationWasOnline')
};
final mockTestVariables = [
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
];
final mockMapVariables = [
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
];
