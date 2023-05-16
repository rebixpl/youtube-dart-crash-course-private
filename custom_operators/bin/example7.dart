// Cross Platform Type Operators

void main(List<String> args) {
  final mom = Person(name: 'Jane');
  final dad = Person(name: 'John');
  final son = Person(name: 'Jack');
  final daughter = Person(name: 'Jill');

  final whiskers = Pet(name: 'Whiskers');

  final family = mom + dad;
  print('Mom + Dad = $family');
  // OUTPUT: Mom + Dad = Family(members = [Person(name = Jane), Person(name = John)], pets = [])

  final withWhiskers = family & whiskers;
  print('Family + Whiskers = $withWhiskers');
  // OUTPUT: Family + Whiskers = Family(members = [Person(name = Jane), Person(name = John)], pets = [Pet(name = Whiskers)])

  final withSon = withWhiskers + son;
  print('Family + Son = $withSon');
  // OUTPUT: Family + Son = Family(members = [Person(name = Jane), Person(name = John), Person(name = Jack)], pets = [Pet(name = Whiskers)])

  final withDaughter = withSon + daughter;
  print('Family + Daughter = $withDaughter');
  // OUTPUT: Family + Daughter = Family(members = [Person(name = Jane), Person(name = John), Person(name = Jack), Person(name = Jill)], pets = [Pet(name = Whiskers)])

  final sonWithWhiskers = son & whiskers;
  print('Son + Whiskers = $sonWithWhiskers');
  // OUTPUT: Son + Whiskers = Family(members = [Person(name = Jack)], pets = [Pet(name = Whiskers)])

  // Merge two families
  final withSonAndWhiskers = withDaughter ^ sonWithWhiskers;
  print('Family + Son + Whiskers = $withSonAndWhiskers');
  // OUTPUT: Family + Son + Whiskers = Family(members = [Person(name = Jane), Person(name = John), Person(name = Jack), Person(name = Jill)], pets = [Pet(name = Whiskers)])
}

class Person {
  final String name;

  const Person({
    required this.name,
  });

  @override
  String toString() => 'Person(name = $name)';
}

class Pet {
  final String name;

  const Pet({
    required this.name,
  });

  @override
  String toString() => 'Pet(name = $name)';
}

class Family {
  final List<Person> members;
  final List<Pet> pets;

  const Family({
    required this.members,
    required this.pets,
  });

  @override
  String toString() => 'Family(members = $members, pets = $pets)';
}

extension on Person {
  Family operator +(Person other) => Family(
        members: [this, other],
        pets: [],
      );

  Family operator &(Pet other) => Family(
        members: [this],
        pets: [other],
      );
}

extension on Family {
  Family operator &(Pet other) => Family(
        members: members,
        pets: [...pets, other],
      );

  Family operator +(Person other) => Family(
        members: [...members, other],
        pets: pets,
      );

  Family operator ^(Family other) => Family(
        members: [...members, ...other.members],
        pets: [...pets, ...other.pets],
      );
}
