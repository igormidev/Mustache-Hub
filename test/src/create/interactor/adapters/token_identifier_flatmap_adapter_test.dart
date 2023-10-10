import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';
import 'package:uuid/uuid.dart';

void main() {
  final tokenAdapter = TokenIdentifierFlatMapAdapter();
  test('Should return the expected model', () async {
    // mockBool();
    final response = tokenAdapter.toFlatMap(
      textPipes: mockText,
      booleanPipes: mockBooleans,
      modelPipes: mockModels,
    );

    expect(response, {
      ...expectedText,
      ...expectedBooleans,
      ...expectedModels,
    });

    // tokenAdapter.flatModelPipe();
  });
}

void mockBool() {
  final Faker faker = Faker();
  List.generate(10, (_) {
    final text = '''BooleanPipe(
  name: "${faker.lorem.word()}",
  description: "${faker.lorem.sentence()}",
  mustacheName: "${faker.lorem.word()}",
  pipeId: "${const Uuid().v4()}",
),''';
    print(text);
  });
}

final expectedText = {
  'tempus': TokenIdentifier.text(name: 'tempus'),
  'habitasse': TokenIdentifier.text(name: 'habitasse'),
  'dignissim': TokenIdentifier.text(name: 'dignissim'),
  'habitant': TokenIdentifier.text(name: 'habitant'),
};

final mockText = [
  TextPipe(
    name: "arcu",
    description:
        "Congue nisi vitae suscipit tellus mauris a diam maecenas sed.",
    mustacheName: "tempus",
    pipeId: "0a39d820-65f5-11ee-99ee-5710c0aa59ec",
    isRequired: false,
  ),
  TextPipe(
    name: "vel",
    description: "Neque ornare aenean euismod elementum nisi quis.",
    mustacheName: "habitasse",
    pipeId: "0a3a2640-65f5-11ee-99ee-5710c0aa59ec",
    isRequired: true,
  ),
  TextPipe(
    name: "fusce",
    description: "Volutpat ac tincidunt vitae semper quis lectus.",
    mustacheName: "dignissim",
    pipeId: "0a3a2641-65f5-11ee-99ee-5710c0aa59ec",
    isRequired: false,
  ),
  TextPipe(
    name: "fringilla",
    description:
        "Ipsum dolor sit amet consectetur adipiscing elit ut aliquam purus.",
    mustacheName: "habitant",
    pipeId: "0a3a2642-65f5-11ee-99ee-5710c0aa59ec",
    isRequired: true,
  ),
];

final expectedBooleans = {
  'convallis': TokenIdentifier.boolean(name: 'convallis'),
  'pulvinar': TokenIdentifier.boolean(name: 'pulvinar'),
  'libero': TokenIdentifier.boolean(name: 'libero'),
  'sollicitudin': TokenIdentifier.boolean(name: 'sollicitudin'),
};

final mockBooleans = [
  BooleanPipe(
    name: "augue",
    description: "Ornare arcu dui vivamus arcu felis.",
    mustacheName: "convallis",
    pipeId: "53ef0d2f-a1ba-4540-b682-047a4c19ca35",
  ),
  BooleanPipe(
    name: "vulputate",
    description: "Odio ut sem nulla pharetra diam sit amet nisl suscipit.",
    mustacheName: "pulvinar",
    pipeId: "e2fd4e29-88e3-4e34-b361-1bbaf0a8e062",
  ),
  BooleanPipe(
    name: "laoreet",
    description: "A cras semper auctor neque vitae tempus quam pellentesque.",
    mustacheName: "libero",
    pipeId: "f9a868d4-ee45-4a22-9a6d-78d0f9b299b0",
  ),
  BooleanPipe(
    name: "vivamus",
    description: "Eu consequat ac felis donec et odio pellentesque diam.",
    mustacheName: "sollicitudin",
    pipeId: "4396759d-ff62-4e2d-b7ad-e16a0b59d55d",
  ),
];

final expectedModels = {
  // First model texts
  'nascetur': TokenIdentifier.text(name: 'nascetur'),
  'montes': TokenIdentifier.text(name: 'montes'),
  'sociis': TokenIdentifier.text(name: 'sociis'),

  // Sub model texts
  'amet': TokenIdentifier.text(name: 'amet'),
  'habitant': TokenIdentifier.text(name: 'habitant'),
  'pellentesque': TokenIdentifier.text(name: 'pellentesque'),
  'diam': TokenIdentifier.text(name: 'diam'),

  // First model booleans
  'turpis': TokenIdentifier.boolean(name: 'turpis'),
  'iasdasdd': TokenIdentifier.boolean(name: 'iasdasdd'),
  'mollis': TokenIdentifier.boolean(name: 'mollis'),

  // Sub model booleans
  'pulvinar': TokenIdentifier.boolean(name: 'pulvinar'),
  'fusce': TokenIdentifier.boolean(name: 'fusce'),
  'dignissim': TokenIdentifier.boolean(name: 'dignissim'),
  'ut': TokenIdentifier.boolean(name: 'ut'),

  // Models name
  'iaculis': TokenIdentifier.model(
    name: 'iaculis',
    textsNames: [
      'nascetur',
      'montes',
      'sociis',
    ],
    booleanNames: [
      'turpis',
      'iasdasdd',
      'mollis',
    ],
    subModelsNames: [
      'yahudma',
    ],
  ),
  'yahudma': TokenIdentifier.model(
    name: 'yahudma',
    textsNames: [
      'amet',
      'habitant',
      'pellentesque',
      'diam',
    ],
    booleanNames: [
      'pulvinar',
      'fusce',
      'dignissim',
      'ut',
    ],
    subModelsNames: [],
  ),
};

final mockModels = [
  ModelPipe(
    name: 'iaculis',
    description: 'Vitae aliquet nec ullamcorper sit amet risus nullam.',
    mustacheName: 'iaculis',
    textPipes: [
      TextPipe(
        name: "nascadetur",
        description: "Iorbi non arcu risus quis varius quam quisque id diam.",
        mustacheName: "nascetur",
        pipeId: "4396759d-ff62-4e2d-b7ad-e16a0b59d55d",
        isRequired: true,
      ),
      TextPipe(
        name: "pretium",
        description: "Eu sem integer vitae justo.",
        mustacheName: "montes",
        pipeId: "f3520b5f-8c66-4a24-bd8d-1f0014ce54b1",
        isRequired: false,
      ),
      TextPipe(
        name: "interdum",
        description: "Volutpat odio facilisis mauris sit.",
        mustacheName: "sociis",
        pipeId: "3bd7163c-e431-462e-8803-f547aa69a257",
        isRequired: true,
      ),
    ],
    booleanPipes: [
      BooleanPipe(
        name: "tincidunt",
        description: "Id ornare arcu odio ut sem nulla pharetra diam sit.",
        mustacheName: "turpis",
        pipeId: "a9f3eae9-90ab-4e9e-8569-084c416b58e9",
      ),
      BooleanPipe(
        name: "praesent",
        description:
            "Et sollicitudin ac orci phasellus egestas tellus rutrum tellus.",
        mustacheName: "iasdasdd",
        pipeId: "f2aac486-52e4-4da5-82d6-704b02289811",
      ),
      BooleanPipe(
        name: "id",
        description: "Morbi non arcu risus quis varius quam quisque id.",
        mustacheName: "mollis",
        pipeId: "a3887ec8-5b83-47ec-bc13-f80dfcd1d7ae",
      )
    ],
    modelPipes: [
      ModelPipe(
        name: 'yahudma',
        description: '',
        mustacheName: 'yahudma',
        textPipes: [
          TextPipe(
            name: "viverra",
            description:
                "Etiam dignissim diam quis enim lobortis scelerisque fermentum dui.",
            mustacheName: "amet",
            pipeId: "f31aca4d-d8b0-4f92-a118-35ca30666ce6",
            isRequired: true,
          ),
          TextPipe(
            name: "gravida",
            description: "Molestie nunc non blandit massa enim nec.",
            mustacheName: "habitant",
            pipeId: "49a878f5-9002-408d-8341-815aea29a201",
            isRequired: false,
          ),
          TextPipe(
            name: "viverra",
            description: "Neque volutpat ac tincidunt vitae semper quis.",
            mustacheName: "pellentesque",
            pipeId: "2533ba22-7d12-4e98-8e67-3485a9ef6cec",
            isRequired: true,
          ),
          TextPipe(
            name: "amet",
            description:
                "Amet volutpat consequat mauris nunc congue nisi vitae suscipit.",
            mustacheName: "diam",
            pipeId: "040ac024-1862-42cb-bcff-e54dea140b02",
            isRequired: false,
          ),
        ],
        booleanPipes: [
          BooleanPipe(
            name: "fringilla",
            description: "Amet volutpat consequat mauris nunc congue.",
            mustacheName: "pulvinar",
            pipeId: "b0616db5-7267-4acf-ba15-f84ac31d598c",
          ),
          BooleanPipe(
            name: "amet",
            description: "Dolor sed viverra ipsum nunc.",
            mustacheName: "fusce",
            pipeId: "e77bf6bc-a3c7-450b-85b8-3a7d57bccee4",
          ),
          BooleanPipe(
            name: "tempus",
            description:
                "Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis.",
            mustacheName: "dignissim",
            pipeId: "93e85b7b-10d8-4458-a571-9e7f83dcddce",
          ),
          BooleanPipe(
            name: "ridiculus",
            description: "Ac tortor dignissim convallis aenean et tortor.",
            mustacheName: "ut",
            pipeId: "6c384991-d8dd-4ff5-9672-1eaa7d9b84bc",
          ),
        ],
        modelPipes: const [],
      ),
    ],
  ),
];
