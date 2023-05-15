// Mixins with hashCode Implementations

void main(List<String> args) {
  final cats = <Cat>{
    Cat(age: 2, name: "Kitten 1"),
    Cat(age: 3, name: "Kitten 2"),
    Cat(age: 2, name: "Kitten 1"),
  };

  cats.forEach(print);

  /// OUTPUT:
  /// Pet (PetType.cat), name = Kitten 1, age = 2
  /// Pet (PetType.cat), name = Kitten 2, age = 3
}

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet ($type), name = $name, age = $age';

  @override
  int get hashCode => Object.hash(name, age, type);

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({
    required this.age,
    required this.name,
  }) : type = PetType.cat;
}
