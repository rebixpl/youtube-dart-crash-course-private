// Generic Extension on Any Data Type

void main(List<String> args) {
  final personName = personThing.mapIfOfType(
        (Person p) => p.name,
      ) ??
      'Unknown person name';
  print(personName); // OUTPUT: Foo

  final animalName = animalThing.mapIfOfType(
        (Person p) => p.name,
      ) ??
      'Unknown animal name';
  print(animalName); // OUTPUT: Unknown animal name
}

abstract class Thing {
  final String name;
  const Thing({required this.name});
}

class Person extends Thing {
  final int age;
  const Person({
    required String name,
    required this.age,
  }) : super(name: name);
}

class Animal extends Thing {
  final String species;
  const Animal({
    required String name,
    required this.species,
  }) : super(name: name);
}

const Thing personThing = Person(name: 'Foo', age: 20);
const Thing animalThing = Animal(name: 'Bar', species: 'Cat');

extension<T> on T {
  R? mapIfOfType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
