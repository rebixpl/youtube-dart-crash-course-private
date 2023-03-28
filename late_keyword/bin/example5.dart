// multiple assignments of late variables

void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description);
  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Description 1';
  print(woof.description);

  try {
    woof.description = 'Description 2';
    print(woof.description);
  } catch (e) {
    print(
        e); // LateInitializationError: Field 'description' has already been initialized.
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
