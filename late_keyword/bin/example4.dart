// late variable dependency

void main(List<String> args) {
  final person = Person();
  print(person.fullName); // OUTPUT: _getFullName() is called\nFoo Bar
  print(person.fullName); // OUTPUT: Foo Bar
  print(person.fullName); // OUTPUT: Foo Bar
  print(person.firstName); // OUTPUT: Foo
  print(person.lastName); // OUTPUT: Bar
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print('_getFullName() is called');
    return 'Foo Bar';
  }
}
