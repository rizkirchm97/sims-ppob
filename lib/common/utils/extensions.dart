

import 'package:sims_ppob/common/utils/password_formz_input.dart';

import 'email_formz_input.dart';

extension on EmailValidationError {
  String text() {
    switch (this) {
      case EmailValidationError.invalid:
        return 'Please ensure the email entered is valid';
    }
  }
}

extension on PasswordValidationError {
  String text() {
    switch (this) {
      case PasswordValidationError.invalid:
        return 'Password must be at least 8 characters and contain at least one letter and number';
    }
  }
}