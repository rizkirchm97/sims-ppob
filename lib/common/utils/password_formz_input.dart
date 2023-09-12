import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class PasswordFormzInput extends FormzInput<String, PasswordValidationError>
    with FormzInputErrorCacheMixin {
  PasswordFormzInput.pure([String value = '']) : super.pure(value);

  PasswordFormzInput.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegex =
  RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  PasswordValidationError? validator(String value) {
    return _passwordRegex.hasMatch(value)
        ? null
        : PasswordValidationError.invalid;
  }
}