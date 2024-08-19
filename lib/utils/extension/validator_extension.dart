RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

extension ValidatorExtension on String {
  bool isEmail() => emailRegex.hasMatch(this);
}
