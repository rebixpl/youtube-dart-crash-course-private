/// Subtracting a String from Another String

void main(List<String> args) {
  print('Foo Bar' - 'Foo'); // OUTPUT:  Bar
  print('Bar' - 'Bar'); // OUTPUT:
  print('Foo Bar' - 'Baz'); // OUTPUT: Foo Bar
}

extension Remove on String {
  String operator -(String other) => replaceAll(other, '');
}
