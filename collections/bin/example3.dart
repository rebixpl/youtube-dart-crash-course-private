// Hash Code and Equality

/* Here is the explanation for the code above:
1. The hashCode getter returns a hash code representing the object. The hash code 
is based on the content of the object. Two objects that are equal, according to 
the == operator, must return the same hash code.
2. The == operator compares the content of the objects to determine equality. The 
operator can be overridden to change the equality semantics of a class. */

void main(List<String> args) {
  final person1 = Person(
    age: 10,
    name: 'Foo',
  );
  final dog1 = Dog(
    age: 10,
    name: 'Foo',
  );

  print(person1.hashCode);
  print(dog1.hashCode);

  final persons = {person1, dog1};
  print(persons);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(age, name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(age, name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
