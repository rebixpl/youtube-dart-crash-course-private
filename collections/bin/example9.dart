import 'package:collection/collection.dart';
// Encapsulation with Unmodifiable Collections

void main(List<String> args) {
  // final person = Person();
  // person._siblings; // it is still accessible, dart doesn't have private fields like other languages

  final foo = Person(
    name: 'Foo',
    siblings: [
      Person(
        name: 'Bar',
      ),
    ],
  );

  try {
    foo.siblings?.add(Person(name: 'Baz'));
  } catch (e) {
    print(
        e); // OUTPUT: Unsupported operation: Cannot add to an unmodifiable list
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
}
