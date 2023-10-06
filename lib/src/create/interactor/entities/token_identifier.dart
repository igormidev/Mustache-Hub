import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_identifier.freezed.dart';

@freezed
abstract class TokenIdentifier with _$TokenIdentifier {
  factory TokenIdentifier.text({
    required String name,
  }) = TextTokenIdentifier;

  factory TokenIdentifier.boolean({
    required String name,
  }) = BooleanTokenIdentifier;

  factory TokenIdentifier.model({
    required String name,
    required List<TextTokenIdentifier> texts,
    required List<BooleanTokenIdentifier> boolean,
    required List<ModelTokenIdentifier> subModels,
  }) = ModelTokenIdentifier;

  factory TokenIdentifier.fromJson(Map<String, dynamic> json) =>
      _$TokenIdentifierFromJson(json);
}

// sealed class ITokenIdentifier {
//   abstract final String name;
// }

// class TextTokenIdentifier {
//   final String name;
//   const TextTokenIdentifier({required this.name});
// }

// class BooleanTokenIdentifier {
//   final String name;
//   const BooleanTokenIdentifier({required this.name});
// }

// class ModelTokenIdentifier {
//   final String name;
//   final List<ITokenIdentifier> texts;
//   final List<ITokenIdentifier> boolean;
//   final List<ITokenIdentifier> subModels;

//   const ModelTokenIdentifier({
//     required this.name,
//     required this.texts,
//     required this.boolean,
//     required this.subModels,
//   });
// }
