// Inheriting Constructors

void main(List<String> args) {
  final mom = Mom();
  print(mom.role); // Role.mom
  final dad = Dad();
  print(dad.role); // Role.dad
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({
    required this.role,
  });
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
