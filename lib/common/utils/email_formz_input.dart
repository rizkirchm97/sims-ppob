import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class EmailFormzInput extends FormzInput<String, EmailValidationError>
    with FormzInputErrorCacheMixin {
  EmailFormzInput.pure([super.value = '']) : super.pure();

  EmailFormzInput.dirty([super.value = '']) : super.dirty();

  static final _emailRegex = RegExp(
    r'^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$',
  );

  @override
  EmailValidationError? validator(String value) {
    return _emailRegex.hasMatch(value) ? null : EmailValidationError.invalid;
  }

}