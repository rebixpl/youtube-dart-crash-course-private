import 'dart:mirrors';

// Mixins and Reflection

void main(List<String> args) {
  final person = Person(name: 'John', age: 30);
  print(person); // OUTPUT: Person = {name (String): John, age (int): 30}

  final house = House(address: '123 Waldemar Drabina Street', rooms: 6);
  print(
      house); // OUTPUT: House = {address (String): 123 Waldemar Drabina Street, rooms (int): 6}
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(reflection.type.simpleName);
    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection.getField(field.simpleName).reflectee
    }.toString();

    return '$thisType = $properties';
  }
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

class Person with HasDescription {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;

  const House({
    required this.address,
    required this.rooms,
  });
}
