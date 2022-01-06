import 'dart:io';

void main() {
  print("password = ");

  String? n = stdin.readLineSync();

  print(validateStructure(n!));
  RegExp regExp_test = new RegExp('^[0-9]');
  print(regExp_test.hasMatch(n[0]));
}

bool validateStructure(String value) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~]{2,})(?=.*?[0-9]).{8,32}$';

  RegExp regExp = new RegExp(pattern);
  if (value[0] == RegExp('^[0-9]')) {
    print('false');
  }
  return regExp.hasMatch(value);
}
