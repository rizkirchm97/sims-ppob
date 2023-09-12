import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:sims_ppob/common/utils/email_formz_input.dart';
import 'package:sims_ppob/common/utils/password_formz_input.dart';
import 'package:sims_ppob/presentation/login/provider/login_form_validation.dart';

import '../../../injection_container.dart';

class LoginProvider with ChangeNotifier {
  LoginProvider(this._loginFormValidation);

  late final LoginFormValidation _loginFormValidation;
  final status = EmailValidationError.invalid;

  LoginFormValidation get form => _loginFormValidation;

  void updateEmail(String value) {
    _loginFormValidation = _loginFormValidation.copyWith(email: EmailFormzInput.dirty(value));
    notifyListeners();
  }

  void updatePassword(String value) {
    _loginFormValidation = _loginFormValidation.copyWith(password: PasswordFormzInput.dirty(value));
    notifyListeners();
  }


  void resetForm() {
    _loginFormValidation = sl<LoginFormValidation>();
    notifyListeners();
  }



}