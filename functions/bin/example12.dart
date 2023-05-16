// Optional Positional Parameters

void main(List<String> args) {
  makeUpperCase(); // OUTPUT: null\nBAR
  makeUpperCase(null); // OUTPUT: null\nBAR
  makeUpperCase('Foo'); // OUTPUT: FOO\nBAR
  makeUpperCase('Foo', 'Bar'); // OUTPUT: FOO\nBAR
  // makeUpperCase('Foo', null);
  makeUpperCase(null, 'Bar'); // OUTPUT: null\nBAR
}

void makeUpperCase([
  String? name,
  String lastName = 'Bar',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
