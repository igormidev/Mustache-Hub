import 'package:cloud_firestore/cloud_firestore.dart';

Map<String, dynamic> initialPipe(String userId) {
  return {
    'isPublic': false,
    'ownerId': userId,
    'readPermissionIds': [],
    'writePermissionIds': [],
    'availibleVersions': '1.0.0',
    'name': 'Initial template',
  };
}

Map<String, dynamic> getUserStats(Timestamp createdAt) {
  return {
    "collectionUpdatedAt": createdAt,
    "userTier": 0, // Free user
  };
}

Map<String, dynamic> getInitialTemplateMap(Timestamp createdAt) {
  return {
    'versionName': '1.0.0',
    'createdAt': createdAt,
    'name': 'Initial template',
    'description':
        'This is a exemple template to demonstrate what mustache can do',
    'textPipes': [
      {
        'runtimeType': 'TextPipe',
        'name': 'Your name',
        'description': 'Type here your name',
        'id': 'ac310f24bbe14b678da792c4780c2c24',
        'isRequired': true,
        'mustacheName': 'userName',
      }
    ],
    'booleanPipes': [
      {
        'runtimeType': 'BooleanPipe',
        'name': 'Are you new to mustache hub?',
        'description':
            'Set this variable to true if you are new to mustache hub',
        'id': '82a29d0221894312bc069671b9710289',
        'defaultValue': true,
        'mustacheName': 'areYouNewToMustacheHub',
      }
    ],
    'content': '''Hello, I'm {{userName}}

{{#areYouNewToMustacheHub}}
I am new to mustache hub.
But i can't wait to discover all functionalities of text template generation that mustache hub tool has!
{{/areYouNewToMustacheHub}}
{{^areYouNewToMustacheHub}}
I am a expert in mustache text template generator tool! And i already know how to use it to use it in my job to generate boilerplate texts!
{{/areYouNewToMustacheHub}}
''',
  };
}

Map<String, dynamic> initialCollection({
  required String initialCollectionId,
  required DocumentReference packageRef,
}) {
  return {
    'collections': [
      {
        'id': initialCollectionId,
        'name': 'Initial collection',
        'itens': [
          {
            'id': packageRef,
            'versions': [
              '1.0.0',
            ]
          },
        ],
        'subCollections': []
      },
    ],
  };
}
