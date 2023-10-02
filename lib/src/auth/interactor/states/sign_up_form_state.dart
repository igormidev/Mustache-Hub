import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/core/exceptions/failures/auth_failure.dart';

part 'sign_up_form_state.freezed.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  factory SignUpFormState.initial() = _Initial;
  factory SignUpFormState.loading() = SignUpFormStateLoading;
  factory SignUpFormState.withError({
    // TODO(igor): Stop using this way of dealing with error
    required CredentialAuthException error,
  }) = SignUpFormStateError;
  factory SignUpFormState.success() = _Success;
}
