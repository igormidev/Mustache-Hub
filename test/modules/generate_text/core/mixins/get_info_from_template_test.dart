// import 'package:flutter_test/flutter_test.dart';
// import 'package:mustachehub/logic/entities/pipe.dart';
// import 'package:mustachehub/modules/generate_text/core/mixins/get_info_from_template.dart';
// import 'package:mustachehub/modules/generate_text/logic/dtos/pipe_dto.dart';

// void main() {
//   test('Should pl', () {
//     Map<String, dynamic> asd = {};
//     final mapaEntrada = MapEntry('batata', {
//       'assada': {
//         n(): <dynamic, dynamic>{'sexo': 3}
//       }
//     });
//     asd.addEntries([mapaEntrada]);
//     (asd['batata']['assada']['eh'] as Map).addAll({'PORFAVOR': 2});
//     (asd['batata']['assada']['eh'] as Map).addAll({'DOIDO': 2});
//     // const MapEntry('batata', MapEntry('assada', MapEntry('eh', MapEntry('maneiro', true)))),
//     // const MapEntry('batata', MapEntry('assada', MapEntry('eh', MapEntry('sabugas', 'CATAPIMBAS')))),
//     print(asd);
//     // TODO: Implement test
//   });

//   final c = TestClass();

//   test('Should return expected variable', () {
//     final mockLista = {
//       'empresa': {
//         'nome': 'Wallmart',
//         'patrimonio': 37849.03,
//         'ceo': {
//           'nome': 'João freitas da silva',
//           'idade': 38,
//           'nascidoEm': 2000,
//           'faculdade': {
//             'nome': 'Federal do rio de janeiro',
//             'endereço': 'Rio de Janeiro',
//           }
//         }
//       },
//       'clientes': [
//         {
//           'nome': 'Igor Miranda Souza',
//           'ehHomem': true,
//           'idade': 18,
//           'profissao': {
//             'nome': 'programador',
//             'tempoDeAtuacaoEmAnos': 5,
//           }
//         },
//         {
//           'nome': 'Luana da silva',
//           'ehHomem': true,
//           'idade': 33,
//           'profissao': {
//             'nome': 'medica',
//             'tempoDeAtuacaoEmAnos': 8,
//           }
//         },
//         {
//           'nome': 'Lisandra',
//           'ehHomem': true,
//           'idade': 53,
//           'profissao': {
//             'nome': 'enfermeira',
//             'tempoDeAtuacaoEmAnos': 30,
//           }
//         },
//       ],
//     };
//     c.getPayloadFromDtos([
//       TextPipeDto(
//         pipe: TextPipe(
//           description: 'description1',
//           mustacheName: 'mustacheName1',
//           name: 'Name1',
//           isRequired: true,
//         ),
//         payloadAddress: const ['pessoa', ''],
//         payloadValue: 'Eu quero comer muita batata',
//       )
//     ]);
//   });
// }

// class TestClass with GetInfoFromTemplate {}

// String n() => 'eh';
