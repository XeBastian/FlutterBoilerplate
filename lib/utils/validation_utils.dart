// Password and name extensions
extension PasswordValidation on String {
  bool get hasLowercase => contains(RegExp(r'[a-z]'));

  bool get hasUppercase => contains(RegExp(r'[A-Z]'));

  bool get hasNumeric => contains(RegExp(r'[0-9]'));

  bool get hasSpecialChar => contains(RegExp(r'[!@#$%^&*(),.?":{}/\|<>]'));
}

// name extension class
extension NameValidation on String {
  bool get containsNumber => contains(RegExp(r'[0-9]'));

  bool get containsSpecialChar => contains(RegExp(r'[!@#$%^&*(),.?":{}|<>0-9]')); // Include numeric characters as well
}

// password length validator
//
int passwordStrength(String password) {
  int strength = 0;
  if (password.length >= 8) {
    strength++;
  }
  if (password.hasLowercase) {
    strength++;
  }
  if (password.hasUppercase) {
    strength++;
  }
  if (password.hasNumeric) {
    strength++;
  }
  if (password.hasSpecialChar) {
    strength++;
  }
  return strength;
}
