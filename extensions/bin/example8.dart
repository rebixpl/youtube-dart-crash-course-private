// Extension Overrides

import 'dart:ffi';

void main(List<String> args) {
  const jack = Person(
    name: 'Jack',
    age: 20,
  );

  print(ShortDescription(jack).description); // OUTPUT: Jack (20)
  print(LongDescription(jack).description); // OUTPUT: Jack is 20 years old
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

// short description of a person
extension ShortDescription on Person {
  String get description => '$name ($age)';
}

// long description of a person
extension LongDescription on Person {
  String get description => '$name is $age years old ';
}
