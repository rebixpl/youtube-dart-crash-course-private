import 'package:collection/collection.dart';
// Encapsulation with Unmodifiable Collections

/* This Dart code defines a class called Person which has a name and a list of 
siblings. The list of siblings is optional and is marked as private with the 
_siblings prefix. The Person class also has a getter method called siblings which 
returns an unmodifiable view of the _siblings list using UnmodifiableListView.

The main function creates an instance of Person called foo with a name of "Foo" 
and a sibling list containing a single Person object with a name of "Bar". The 
try block then attempts to add a new Person object with a name of "Baz" to foo's 
sibling list using the add() method on the siblings list.

However, since the siblings list is unmodifiable, an Unsupported operation: 
Cannot add to an unmodifiable list exception is thrown and caught by the catch 
block. The exception is then printed to the console using the print() function.

It is also noted in the code that Dart does not have true private fields like 
some other programming languages, and so the _siblings list is technically still 
accessible from outside the class. */

void main(List<String> args) {
  // final person = Person();
  // person._siblings; // it is still accessible, dart doesn't have private fields
  //like other languages

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
