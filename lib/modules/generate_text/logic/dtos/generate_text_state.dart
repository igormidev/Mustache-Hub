// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/logic/entities/template.dart';

// class GenerateTextStateModel {
//   final Template template;
//   final Map<Pipe, dynamic> payload;

//   GenerateTextStateModel({
//     required this.template,
//     required this.payload,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'template': template.toMap(),
//       'payload': payload,
//     };
//   }

//   String toJson() => json.encode(toMap());

//   factory GenerateTextStateModel.fromJson(String source) =>
//       GenerateTextStateModel.fromMap(
//           json.decode(source) as Map<String, dynamic>);

//   factory GenerateTextStateModel.fromMap(Map<String, dynamic> map) {
//     return GenerateTextStateModel(
//       template: Template.fromMap(map['template'] as Map<String, dynamic>),
//       payload: Map<Pipe, dynamic>.from((map['payload'] as Map<Pipe, dynamic>)),
//     );
//   }
// }

import 'package:equatable/equatable.dart';

import 'package:mustachehub/modules/generate_text/logic/dtos/pipe_dto.dart';

class GenerateTextStateModel extends Equatable {
  final Template template;
  final List<BooleanPipeDto> booleanDtos;
  final List<TextPipeDto> textDtos;
  const GenerateTextStateModel({
    required this.template,
    required this.booleanDtos,
    required this.textDtos,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [template, textDtos, booleanDtos];
}
