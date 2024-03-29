// Mixins and Function Parameters

void main(List<String> args) {
  final johnDoe = Person(
    firstName: 'John',
    lastName: 'Doe',
  );

  print(johnDoe.fullName); // OUTPUT: John Doe
  print(getFullName(johnDoe)); // OUTPUT: John Doe
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}
