// combining null-aware operators

void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  if (lastName?.contains('Bar') ?? false) {
    print('Last name not contains Bar');
  }
  if (lastName?.contains('Bar') == true) {
    print('Last name contains Bar');
  }
}
