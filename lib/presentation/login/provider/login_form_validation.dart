import 'package:formz/formz.dart';

import '../../../common/utils/email_formz_input.dart';
import '../../../common/utils/password_formz_input.dart';

class LoginFormValidation with FormzMixin {
  LoginFormValidation({
    EmailFormzInput? email,
    PasswordFormzInput? password,
    FormzSubmissionStatus? status,
  })  : _email = email ?? EmailFormzInput.pure(),
        _password = password ?? PasswordFormzInput.pure(),
        _status = FormzSubmissionStatus.initial;

  final EmailFormzInput _email;
  final PasswordFormzInput _password;
  final FormzSubmissionStatus _status;

  LoginFormValidation copyWith({
    EmailFormzInput? email,
    PasswordFormzInput? password,
    FormzSubmissionStatus? status,
  }) {
    return LoginFormValidation(
      email: email ?? _email,
      password: password ?? _password,
      status: status ?? _status,
    );
  }

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [_email, _password];
}