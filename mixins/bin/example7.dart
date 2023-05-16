import 'package:uuid/uuid.dart';
// Mixins with Equality Implementation

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();

  final person1 = Person(id: uuid1, name: 'John', age: 30);
  final person1again = Person(id: uuid1, name: 'john', age: 30);

  final person2 = Person(id: uuid2, name: 'John', age: 30);

  if (person1 == person2) {
    print('person1 == person2');
  } else {
    print('person1 != person2');
  }

  if (person1 == person1again) {
    print('person1 == person1again');
  } else {
    print('person1 != person1again');
  }

  if (person1again == person2) {
    print('person1again == person2');
  } else {
    print('person1again != person2');
  }

  /// OUTPUT:
  /// person1 != person2
  /// person1 == person1again
  /// person1again != person2
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
