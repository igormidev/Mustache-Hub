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
}
